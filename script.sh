
Token="glpat-TEBYsUzk5hTp77ZwrzY8"

#This is Dynamic variables
#We can use map< projectid/name , [version,branch,release-name]>
# Version="0.3.0"
# Branch="main"
# Release_name="don't know yet we have to decide12"

#ids=(44295417)
ids=(44364024)

Myfunction(){
    read -p "Enter the project-id " project_id
    read -p "Enter the tag-Version without preceding with v(like: actually v1.0.1 expected -> 1.0.1 ) " Version
    read -p "Enter the branch name " Branch
    read -p "Enter the name of Release" Release_name
    
    if not Branch:
        Branch="main"
    if [not project_id] || [not Version] || [not Branch] || [not Release_name] : 
        return 1     
    
    echo "projectid= ${project_id} Version=${Version} Branch = ${Branch} Release=${Release_name}"
    #1. Here we just post data in the file
    #(version must be without precedded v if try to give can't find the previous tag problem occured )
    curl --request POST --header "PRIVATE-TOKEN: ${Token}" --data "version=${Version}&file=CHANGELOG.md" "https://gitlab.com/api/v4/projects/${project_id}/repository/changelog"

    #2. Here we are  geting change log data.
    change_log_data=$(curl -XGET  --header "PRIVATE-TOKEN: ${Token}" "https://gitlab.com/api/v4/projects/${project_id}/repository/changelog?version=${Version}")

    echo $change_log_data
    value=$(echo $change_log_data | jq '.notes')
    #For triming space
    value2=`echo $value | sed 's/ *$//g'`
    #For removing invalid quotes
    value2=`echo $value2 | sed 's/"//g'`

    #3.Here I  have to cut the Tag Or not.
    #https://git.hotwax.co/api/v4/projects/236/repository/tags?tag_name=v4.6.0&ref=main&message=2023-03-14

    curl --request POST --header "PRIVATE-TOKEN: ${Token}" "https://gitlab.com/api/v4/projects/${project_id}/repository/tags?tag_name=v${Version}&ref=${Branch}&message=15/03/2023"

    # 4.Cutting the Realease and Send Changelog data
    curl --header 'Content-Type: application/json' --header "PRIVATE-TOKEN: ${Token}" \
       --data "{ \"name\": \"${Release_name}\", \"tag_name\": \"v${Version}\", \"description\":\"${value2}\", \"milestones\": [], \"assets\": {}, \"ref\": \"${Branch}\" }" \
       --request POST "https://gitlab.com/api/v4/projects/${project_id}/releases"

}


for id in "${ids[@]}"
do
    echo "Processing id: $id"
    Myfunction $id
    # Perform some operation on each id
done
