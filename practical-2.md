# Practical 2 - Git and GitLab ; how to make them speak together
## Create a remote repository

In order to host your versioned code on GitLab, you need to have an existing remote project, already created on GitLab.
This project is generally an empty project, with a certain name.

1. Connect to [gitlab.epfl.ch](https://gitlab.epfl.ch) with your EPFL account
2. Select `New project`, then `Create blank project`
3. Give a name to it (ex: `my-first-project-with-git`)

> *Note:* The name you'll give can be different from the one you give to your local project
> but it is a good practice to have it the same locally and remotely.

4. Select the `Private` visibility level, to make this project only visible by you
5. **Uncheck** the configuration `Initialize repository with a README` ; you already have a README in your local project
6. Click on `Create project`


<div align="center">
  <img src="icons/practical-2-create-remote-project.png" width="80%">
    <br>
    <img src="icons/practical-2-create-remote-project-2.png" width="80%">
</div>


## Link a local project to a GitLab one

Now both projects are initialized, remote one on GitLab, local one in Git, we need to configure the local
Git project to target a specific GitLab project to be able to save/import (i.e. push/pull) code to/from GitLab. 

1. On GitLab, click on the blue `code` menu and copy the URL given by the `Clone with HTTPS` option.

<div align="center">
  <img src="icons/practical-2-gitlab-clone-https.png" width="40%">
</div>

2. In your local projet, under the `practical` folder, open a Git terminal 
3. Write down the following command : `git remote add origin ` and paste the URL.
This command *adds* to the local project a link to a *remote* project in the *origin* channel, given by the *URL*

<div align="center">
  <img src="icons/practical-2-git-remote-add-origin.png" width="70%">
</div>

> Note : For Windows users, **ctrl v** doesn't work properly on the git terminal.
You need to do a **right-click -> paste** to paste the URL

4. Check that the remote project was correctly added : `git remote -v`

<div align="center">
  <img src="icons/practical-2-git-remote.png" width="80%">
</div>

## Push new commits on Gitlab

The `push` action on Git sends all the commits newer than the last one set on GitLab to the GitLab project.
In the two previous section, we've created an empty project on GitLab and have linked it to the local project.

Let's now push the files to gitlab
1. Under the `practical` folder, open a Git terminal 
2. Write down the following command : `git push origin main`.
3. Refresh your GitLab project ; you should now see your files and the different commits.

> Note : It may happen that GitLab asks you some credentials to be able to push/pull/clone a project.
> This is a security feature to link your GitLab account to your computer. Under your account,
> select `Edit profile` and click on `Access tokens`. Create a new token, with the following settings
> - Expiration date : at least 6 months later
> - Read-repository option
> - Write repository option
>
> Once created, copy it and paste it in the `token` field, and add your gaspar username under the `username` field.
>
> <div align="center">
>  <img src="icons/practical-2-tokens.png" width="90%">
> </div>

## GitLab interface ; quick summary

### Project summary
1. Project title
2. Permission level
3. Number of commits / branches / tags
4. Project size
<div align="center">
  <img src="icons/practical-2-gitlab-summary.png" width="80%">
</div>

### Commits and download 
1. Last commit
2. History of commits
3. File edition
4. Cloning & downloaded options
<div align="center">
  <img src="icons/practical-2-gitlab-summary-commits.png" width="80%">
</div>

### Code
1. Current branch / commit you are looking at
2. Project files & hierarchy
<div align="center">
  <img src="icons/practical-2-gitlab-summary-code.png" width="80%">
</div>

### README preview
1. Automatic preview of the README file

<div align="center">
  <img src="icons/practical-2-gitlab-summary-readme.png" width="80%">
</div>

### Project actions and settings
1. Open issues
2. Create merge request
3. Manage permissions on your project, adding collaborators
4. Deploy your code publicly with releases
5. Make some advanced configuration on your project
<div align="center">
  <img src="icons/practical-2-gitlab-summary-settings.png" width="50%">
</div>

## Editing a file on GitLab
The main file edition which is done directly on GitLab is an update of the README file. The main
reason for that is that you would like to have the most comprehensible and beautiful documentation
and you need for that to see the final preview, which is only available on GitLab.

* Click on the **README** file to open it 
* Under the `Edit` blue menu, select `Edit single file`

<div align="center">
  <img src="icons/practical-2-gitlab-edit-file.png" width="70%">
</div>

* Enrich the **README** by adding the link to download Fiji `If you don't have Fiji instaleld, 
please download it from [this website](https://imagej.net/software/fiji/)`

<div align="center">
  <img src="icons/practical-2-gitlab-file-edition.png" width="70%">
</div>

* Click on `Commit changes`

## Pull new commits from GitLab

The `pull` action on Git gets all the commits newer than the last one set locally from the GitLab project.
In the previous section, we've added a new commit on GitLab, which is not added locally yet.
1. Under the `practical` folder, open a Git terminal 
2. Write down the following command : `git pull origin main`.
3. Open the **README.md** file ; you should see the modifications you've done on GitLab.

<div align="center">
  <img src="icons/practical-2-gitlab-pull.png" width="90%">
</div>