Thank you for thinking of contributing to sewer.                    
Every contribution to sewer is important to us.                       
You may not know it, but you are about to contribute towards making the world a more safer and secure place.                         

Contributor offers to license certain software (a “Contribution” or multiple
“Contributions”) to sewer, and sewer agrees to accept said Contributions,
under the terms of the MIT License.
Contributor understands and agrees that sewer shall have the irrevocable and perpetual right to make
and distribute copies of any Contribution, as well as to create and distribute collective works and
derivative works of any Contribution, under the MIT License.


## To contribute:            

- fork this repo.
- cd sewer
- sudo apt-get install pandoc
- open an issue on this repo. In your issue, outline what it is you want to add and why.
- install pre-requiste software:             
```shell
apt-get -y install pandoc && pip3 install -e .[dev,test]
```                   
- make the changes you want on your fork.
- your changes should have backward compatibility in mind unless it is impossible to do so.
- add your name and contact(optional) to CONTRIBUTORS.md
- add tests
- format your code using [black](https://github.com/ambv/black):                      
```shell
black --line-length=100 --py36 .
```                                         
- run [pylint](https://pypi.python.org/pypi/pylint) on the code and fix any issues:                      
```shell
pylint --enable=E --disable=W,R,C sewer/
```    
- run tests and make sure everything is passing:
```shell
make test
```
- open a pull request on this repo.          
          
NB: I make no commitment of accepting your pull requests.   


## Creating a new release:   
To create a new release on [https://pypi.org/project/sewer](https://pypi.org/project/sewer);     
- Create a new branch
- Update `sewer/__version__.py` with the new version number.  
  The version numbers should follow semver.    
- Update `CHANGELOG.md` with information about what is changing in the new release.   
- Open a pull request and have it go through the normal review process.
- Upon approval of the pull request, squash and merge it.   
  Remember that the squash & merge commit message should ideally be the message that was in the pull request template.   
- Once succesfully merged, run;  
```bash
git checkout master
git pull --tags
make uploadprod
```
   That should upload the new release on pypi.   
   You do need to have permissions to upload to pypi.  
   Currently only  [@komuw](https://github.com/komuw) has those permissions, so if you need to create a new release, do talk to him to do that.   
   In the future, more contributors may be availed permissions to pypi.   
