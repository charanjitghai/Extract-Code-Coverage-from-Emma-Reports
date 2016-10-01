pwd=`pwd`
rm allProjFiles.out
rm allZeroCoverageFiles.out
rm allProjZeroCoverageFiles.out
cd $AVR/fusionapps/crm/components/crmCommon/zcx/content/publicModelBase/src
find . -name '*.java' | grep -Eo '[A-Za-z]*.java' > $pwd/allProjFiles.out
cd $MW_HOME/jdeveloper/ide/extensions/oracle.apps.common.ide.emmaextension.2/CrmCommon.jws/coverage/_files
grep -rl 'COVERAGE SUMMARY FOR PACKAGE' * | xargs grep -Eo '[A-Za-z]*.java</A></TD><TD CLASS="h">0%' | grep -Eo '[A-Za-z]*.java' > $pwd/allZeroCoverageFiles.out
sort $pwd/allProjFiles.out -o $pwd/allProjFiles.out
sort $pwd/allZeroCoverageFiles.out -o $pwd/allZeroCoverageFiles.out
comm -1 -2 $pwd/allProjFiles.out $pwd/allZeroCoverageFiles.out > $pwd/allProjZeroCoverageFiles.out
