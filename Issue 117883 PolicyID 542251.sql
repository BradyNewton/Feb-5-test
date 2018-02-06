USE CPP
BEGIN TRANSACTION
IF 5 = (select MAX(EndmtNum) from dbo.CPPPolicyEndmtHistory where PolicyID = 542251)
BEGIN
 Update dbo.CPPPolicyCore set DateExpiration = '03/11/2017' where PolicyID = 542251
IF @@ROWCOUNT <> 1 BEGIN 	Print 'Error insert CPPPolicyCore' 	GOTO xROLLBACK 	END
 Update dbo.CPPPolicySubData set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 10 BEGIN 	Print 'Error insert CPPPolicySubData' 	GOTO xROLLBACK 	END
 Update dbo.CPPPolicySubDataHash set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPPolicySubDataHash' 	GOTO xROLLBACK 	END
 Update dbo.[CPPPolicyLoca] set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert [CPPPolicyLoca]' 	GOTO xROLLBACK 	END
 Update dbo.[CPPPolicyLOB] set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert [CPPPolicyLOB]' 	GOTO xROLLBACK 	END
 Update dbo.CPPPolicyStateMods set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPPolicyStateMods' 	GOTO xROLLBACK 	END
 Update dbo.[InsuredsSubData] set CoverageDateExp = '03/11/2017' where InsID = 542424 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert [InsuredsSubData]' 	GOTO xROLLBACK 	END
 Update dbo.CPPPolicyAdditionalInsured set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPPolicyAdditionalInsured' 	GOTO xROLLBACK 	END
 Update dbo.GLPolicyData set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert GLPolicyData' 	GOTO xROLLBACK 	END
 Update dbo.GLPolicyEBL set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert GLPolicyEBL' 	GOTO xROLLBACK 	END
 Update dbo.GLPolicyClasses set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert GLPolicyClasses' 	GOTO xROLLBACK 	END
 Update dbo.CPPPolicySubDataHash set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPPolicySubDataHash' 	GOTO xROLLBACK 	END
 Update dbo.GLPolicySublines set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert GLPolicySublines' 	GOTO xROLLBACK 	END
 Update dbo.CABAPolicyData set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CABAPolicyData' 	GOTO xROLLBACK 	END
 Update dbo.CABAPolicyRating set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CABAPolicyRating' 	GOTO xROLLBACK 	END
 Update dbo.CAPolicyAuto set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CAPolicyAuto' 	GOTO xROLLBACK 	END
 Update dbo.CAPolicyAutoRating set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CAPolicyAutoRating' 	GOTO xROLLBACK 	END
 Update dbo.CABAPolicyDataRP set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CABAPolicyDataRP' 	GOTO xROLLBACK 	END
 Update dbo.CPPPolicyProposalForms set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPPolicyProposalForms' 	GOTO xROLLBACK 	END
 Update dbo.CPPCoveragePolicy set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPCoveragePolicy' 	GOTO xROLLBACK 	END
 Update dbo.CPPCoveragePolicyHash set CoverageDateExp = '03/11/2017' where PolicyID = 542251 and CoverageDateExp = '01/25/2017'
IF @@ROWCOUNT > 100 BEGIN 	Print 'Error insert CPPCoveragePolicyHash' 	GOTO xROLLBACK 	END
If (select COUNT(*) from dbo.CPPPolicyNotes where PolicyID in (542251) and Note like '%Issue 117883%') = 0
BEGIN
		INSERT INTO dbo.CPPPolicyNotes(PolicyID,NoteType,EmployeeNum,DateEntered,Note,NoteDate) Values
		(542251, 'Policy', 2798, CURRENT_TIMESTAMP, 'Issue 117883. Policy Exp from 01/25/2017 to 03/11/2017', CURRENT_TIMESTAMP)
		IF @@ROWCOUNT <> 1 GOTO xRollBack
	END 
	ELSE BEGIN
		ROLLBACK
		RAISERROR('Duplicate insert attempted in CPPPolicyNotes. Updates not completed.',18,2)
		GOTO Done
	END 
		
	END ELSE BEGIN
		PRINT 'More trans: script not executed. Issue117883 is Not Done'
		RAISERROR('Unexpected rowcount',18,1)
	END

xCOMMIT:
COMMIT
PRINT 'Issue117883 is Done'
GOTO Done

xROLLBACK:
ROLLBACK
PRINT 'Unexpected rowcount.117883 is Not Done'
RAISERROR('Unexpected rowcount',18,1)

Done:
