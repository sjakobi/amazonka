{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.UpdatePatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing patch baseline. Fields not specified in the request are left unchanged.
module Network.AWS.SSM.UpdatePatchBaseline
  ( -- * Creating a Request
    updatePatchBaseline,
    UpdatePatchBaseline,

    -- * Request Lenses
    upbSources,
    upbRejectedPatches,
    upbApprovedPatchesEnableNonSecurity,
    upbApprovedPatchesComplianceLevel,
    upbName,
    upbReplace,
    upbDescription,
    upbApprovedPatches,
    upbRejectedPatchesAction,
    upbGlobalFilters,
    upbApprovalRules,
    upbBaselineId,

    -- * Destructuring the Response
    updatePatchBaselineResponse,
    UpdatePatchBaselineResponse,

    -- * Response Lenses
    upbrrsCreatedDate,
    upbrrsBaselineId,
    upbrrsSources,
    upbrrsRejectedPatches,
    upbrrsApprovedPatchesEnableNonSecurity,
    upbrrsApprovedPatchesComplianceLevel,
    upbrrsModifiedDate,
    upbrrsName,
    upbrrsDescription,
    upbrrsApprovedPatches,
    upbrrsRejectedPatchesAction,
    upbrrsOperatingSystem,
    upbrrsGlobalFilters,
    upbrrsApprovalRules,
    upbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updatePatchBaseline' smart constructor.
data UpdatePatchBaseline = UpdatePatchBaseline'
  { _upbSources ::
      !(Maybe [PatchSource]),
    _upbRejectedPatches ::
      !(Maybe [Text]),
    _upbApprovedPatchesEnableNonSecurity ::
      !(Maybe Bool),
    _upbApprovedPatchesComplianceLevel ::
      !(Maybe PatchComplianceLevel),
    _upbName :: !(Maybe Text),
    _upbReplace :: !(Maybe Bool),
    _upbDescription ::
      !(Maybe Text),
    _upbApprovedPatches ::
      !(Maybe [Text]),
    _upbRejectedPatchesAction ::
      !(Maybe PatchAction),
    _upbGlobalFilters ::
      !(Maybe PatchFilterGroup),
    _upbApprovalRules ::
      !(Maybe PatchRuleGroup),
    _upbBaselineId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upbSources' - Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
--
-- * 'upbRejectedPatches' - A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
--
-- * 'upbApprovedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
--
-- * 'upbApprovedPatchesComplianceLevel' - Assigns a new compliance severity level to an existing patch baseline.
--
-- * 'upbName' - The name of the patch baseline.
--
-- * 'upbReplace' - If True, then all fields that are required by the CreatePatchBaseline action are also required for this API request. Optional fields that are not specified are set to null.
--
-- * 'upbDescription' - A description of the patch baseline.
--
-- * 'upbApprovedPatches' - A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
--
-- * 'upbRejectedPatchesAction' - The action for Patch Manager to take on patches included in the RejectedPackages list.     * __ALLOW_AS_DEPENDENCY__ : A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as /InstalledOther/ . This is the default action if no option is specified.     * __BLOCK__ : Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as /InstalledRejected/ .
--
-- * 'upbGlobalFilters' - A set of global filters used to include patches in the baseline.
--
-- * 'upbApprovalRules' - A set of rules used to include patches in the baseline.
--
-- * 'upbBaselineId' - The ID of the patch baseline to update.
updatePatchBaseline ::
  -- | 'upbBaselineId'
  Text ->
  UpdatePatchBaseline
updatePatchBaseline pBaselineId_ =
  UpdatePatchBaseline'
    { _upbSources = Nothing,
      _upbRejectedPatches = Nothing,
      _upbApprovedPatchesEnableNonSecurity = Nothing,
      _upbApprovedPatchesComplianceLevel = Nothing,
      _upbName = Nothing,
      _upbReplace = Nothing,
      _upbDescription = Nothing,
      _upbApprovedPatches = Nothing,
      _upbRejectedPatchesAction = Nothing,
      _upbGlobalFilters = Nothing,
      _upbApprovalRules = Nothing,
      _upbBaselineId = pBaselineId_
    }

-- | Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
upbSources :: Lens' UpdatePatchBaseline [PatchSource]
upbSources = lens _upbSources (\s a -> s {_upbSources = a}) . _Default . _Coerce

-- | A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
upbRejectedPatches :: Lens' UpdatePatchBaseline [Text]
upbRejectedPatches = lens _upbRejectedPatches (\s a -> s {_upbRejectedPatches = a}) . _Default . _Coerce

-- | Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
upbApprovedPatchesEnableNonSecurity :: Lens' UpdatePatchBaseline (Maybe Bool)
upbApprovedPatchesEnableNonSecurity = lens _upbApprovedPatchesEnableNonSecurity (\s a -> s {_upbApprovedPatchesEnableNonSecurity = a})

-- | Assigns a new compliance severity level to an existing patch baseline.
upbApprovedPatchesComplianceLevel :: Lens' UpdatePatchBaseline (Maybe PatchComplianceLevel)
upbApprovedPatchesComplianceLevel = lens _upbApprovedPatchesComplianceLevel (\s a -> s {_upbApprovedPatchesComplianceLevel = a})

-- | The name of the patch baseline.
upbName :: Lens' UpdatePatchBaseline (Maybe Text)
upbName = lens _upbName (\s a -> s {_upbName = a})

-- | If True, then all fields that are required by the CreatePatchBaseline action are also required for this API request. Optional fields that are not specified are set to null.
upbReplace :: Lens' UpdatePatchBaseline (Maybe Bool)
upbReplace = lens _upbReplace (\s a -> s {_upbReplace = a})

-- | A description of the patch baseline.
upbDescription :: Lens' UpdatePatchBaseline (Maybe Text)
upbDescription = lens _upbDescription (\s a -> s {_upbDescription = a})

-- | A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
upbApprovedPatches :: Lens' UpdatePatchBaseline [Text]
upbApprovedPatches = lens _upbApprovedPatches (\s a -> s {_upbApprovedPatches = a}) . _Default . _Coerce

-- | The action for Patch Manager to take on patches included in the RejectedPackages list.     * __ALLOW_AS_DEPENDENCY__ : A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as /InstalledOther/ . This is the default action if no option is specified.     * __BLOCK__ : Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as /InstalledRejected/ .
upbRejectedPatchesAction :: Lens' UpdatePatchBaseline (Maybe PatchAction)
upbRejectedPatchesAction = lens _upbRejectedPatchesAction (\s a -> s {_upbRejectedPatchesAction = a})

-- | A set of global filters used to include patches in the baseline.
upbGlobalFilters :: Lens' UpdatePatchBaseline (Maybe PatchFilterGroup)
upbGlobalFilters = lens _upbGlobalFilters (\s a -> s {_upbGlobalFilters = a})

-- | A set of rules used to include patches in the baseline.
upbApprovalRules :: Lens' UpdatePatchBaseline (Maybe PatchRuleGroup)
upbApprovalRules = lens _upbApprovalRules (\s a -> s {_upbApprovalRules = a})

-- | The ID of the patch baseline to update.
upbBaselineId :: Lens' UpdatePatchBaseline Text
upbBaselineId = lens _upbBaselineId (\s a -> s {_upbBaselineId = a})

instance AWSRequest UpdatePatchBaseline where
  type
    Rs UpdatePatchBaseline =
      UpdatePatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdatePatchBaselineResponse'
            <$> (x .?> "CreatedDate")
            <*> (x .?> "BaselineId")
            <*> (x .?> "Sources" .!@ mempty)
            <*> (x .?> "RejectedPatches" .!@ mempty)
            <*> (x .?> "ApprovedPatchesEnableNonSecurity")
            <*> (x .?> "ApprovedPatchesComplianceLevel")
            <*> (x .?> "ModifiedDate")
            <*> (x .?> "Name")
            <*> (x .?> "Description")
            <*> (x .?> "ApprovedPatches" .!@ mempty)
            <*> (x .?> "RejectedPatchesAction")
            <*> (x .?> "OperatingSystem")
            <*> (x .?> "GlobalFilters")
            <*> (x .?> "ApprovalRules")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdatePatchBaseline

instance NFData UpdatePatchBaseline

instance ToHeaders UpdatePatchBaseline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdatePatchBaseline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePatchBaseline where
  toJSON UpdatePatchBaseline' {..} =
    object
      ( catMaybes
          [ ("Sources" .=) <$> _upbSources,
            ("RejectedPatches" .=) <$> _upbRejectedPatches,
            ("ApprovedPatchesEnableNonSecurity" .=)
              <$> _upbApprovedPatchesEnableNonSecurity,
            ("ApprovedPatchesComplianceLevel" .=)
              <$> _upbApprovedPatchesComplianceLevel,
            ("Name" .=) <$> _upbName,
            ("Replace" .=) <$> _upbReplace,
            ("Description" .=) <$> _upbDescription,
            ("ApprovedPatches" .=) <$> _upbApprovedPatches,
            ("RejectedPatchesAction" .=)
              <$> _upbRejectedPatchesAction,
            ("GlobalFilters" .=) <$> _upbGlobalFilters,
            ("ApprovalRules" .=) <$> _upbApprovalRules,
            Just ("BaselineId" .= _upbBaselineId)
          ]
      )

instance ToPath UpdatePatchBaseline where
  toPath = const "/"

instance ToQuery UpdatePatchBaseline where
  toQuery = const mempty

-- | /See:/ 'updatePatchBaselineResponse' smart constructor.
data UpdatePatchBaselineResponse = UpdatePatchBaselineResponse'
  { _upbrrsCreatedDate ::
      !(Maybe POSIX),
    _upbrrsBaselineId ::
      !(Maybe Text),
    _upbrrsSources ::
      !( Maybe
           [PatchSource]
       ),
    _upbrrsRejectedPatches ::
      !(Maybe [Text]),
    _upbrrsApprovedPatchesEnableNonSecurity ::
      !(Maybe Bool),
    _upbrrsApprovedPatchesComplianceLevel ::
      !( Maybe
           PatchComplianceLevel
       ),
    _upbrrsModifiedDate ::
      !(Maybe POSIX),
    _upbrrsName ::
      !(Maybe Text),
    _upbrrsDescription ::
      !(Maybe Text),
    _upbrrsApprovedPatches ::
      !(Maybe [Text]),
    _upbrrsRejectedPatchesAction ::
      !( Maybe
           PatchAction
       ),
    _upbrrsOperatingSystem ::
      !( Maybe
           OperatingSystem
       ),
    _upbrrsGlobalFilters ::
      !( Maybe
           PatchFilterGroup
       ),
    _upbrrsApprovalRules ::
      !( Maybe
           PatchRuleGroup
       ),
    _upbrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdatePatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upbrrsCreatedDate' - The date when the patch baseline was created.
--
-- * 'upbrrsBaselineId' - The ID of the deleted patch baseline.
--
-- * 'upbrrsSources' - Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
--
-- * 'upbrrsRejectedPatches' - A list of explicitly rejected patches for the baseline.
--
-- * 'upbrrsApprovedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
--
-- * 'upbrrsApprovedPatchesComplianceLevel' - The compliance severity level assigned to the patch baseline after the update completed.
--
-- * 'upbrrsModifiedDate' - The date when the patch baseline was last modified.
--
-- * 'upbrrsName' - The name of the patch baseline.
--
-- * 'upbrrsDescription' - A description of the Patch Baseline.
--
-- * 'upbrrsApprovedPatches' - A list of explicitly approved patches for the baseline.
--
-- * 'upbrrsRejectedPatchesAction' - The action specified to take on patches included in the RejectedPatches list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.
--
-- * 'upbrrsOperatingSystem' - The operating system rule used by the updated patch baseline.
--
-- * 'upbrrsGlobalFilters' - A set of global filters used to exclude patches from the baseline.
--
-- * 'upbrrsApprovalRules' - A set of rules used to include patches in the baseline.
--
-- * 'upbrrsResponseStatus' - -- | The response status code.
updatePatchBaselineResponse ::
  -- | 'upbrrsResponseStatus'
  Int ->
  UpdatePatchBaselineResponse
updatePatchBaselineResponse pResponseStatus_ =
  UpdatePatchBaselineResponse'
    { _upbrrsCreatedDate =
        Nothing,
      _upbrrsBaselineId = Nothing,
      _upbrrsSources = Nothing,
      _upbrrsRejectedPatches = Nothing,
      _upbrrsApprovedPatchesEnableNonSecurity =
        Nothing,
      _upbrrsApprovedPatchesComplianceLevel =
        Nothing,
      _upbrrsModifiedDate = Nothing,
      _upbrrsName = Nothing,
      _upbrrsDescription = Nothing,
      _upbrrsApprovedPatches = Nothing,
      _upbrrsRejectedPatchesAction = Nothing,
      _upbrrsOperatingSystem = Nothing,
      _upbrrsGlobalFilters = Nothing,
      _upbrrsApprovalRules = Nothing,
      _upbrrsResponseStatus = pResponseStatus_
    }

-- | The date when the patch baseline was created.
upbrrsCreatedDate :: Lens' UpdatePatchBaselineResponse (Maybe UTCTime)
upbrrsCreatedDate = lens _upbrrsCreatedDate (\s a -> s {_upbrrsCreatedDate = a}) . mapping _Time

-- | The ID of the deleted patch baseline.
upbrrsBaselineId :: Lens' UpdatePatchBaselineResponse (Maybe Text)
upbrrsBaselineId = lens _upbrrsBaselineId (\s a -> s {_upbrrsBaselineId = a})

-- | Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
upbrrsSources :: Lens' UpdatePatchBaselineResponse [PatchSource]
upbrrsSources = lens _upbrrsSources (\s a -> s {_upbrrsSources = a}) . _Default . _Coerce

-- | A list of explicitly rejected patches for the baseline.
upbrrsRejectedPatches :: Lens' UpdatePatchBaselineResponse [Text]
upbrrsRejectedPatches = lens _upbrrsRejectedPatches (\s a -> s {_upbrrsRejectedPatches = a}) . _Default . _Coerce

-- | Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
upbrrsApprovedPatchesEnableNonSecurity :: Lens' UpdatePatchBaselineResponse (Maybe Bool)
upbrrsApprovedPatchesEnableNonSecurity = lens _upbrrsApprovedPatchesEnableNonSecurity (\s a -> s {_upbrrsApprovedPatchesEnableNonSecurity = a})

-- | The compliance severity level assigned to the patch baseline after the update completed.
upbrrsApprovedPatchesComplianceLevel :: Lens' UpdatePatchBaselineResponse (Maybe PatchComplianceLevel)
upbrrsApprovedPatchesComplianceLevel = lens _upbrrsApprovedPatchesComplianceLevel (\s a -> s {_upbrrsApprovedPatchesComplianceLevel = a})

-- | The date when the patch baseline was last modified.
upbrrsModifiedDate :: Lens' UpdatePatchBaselineResponse (Maybe UTCTime)
upbrrsModifiedDate = lens _upbrrsModifiedDate (\s a -> s {_upbrrsModifiedDate = a}) . mapping _Time

-- | The name of the patch baseline.
upbrrsName :: Lens' UpdatePatchBaselineResponse (Maybe Text)
upbrrsName = lens _upbrrsName (\s a -> s {_upbrrsName = a})

-- | A description of the Patch Baseline.
upbrrsDescription :: Lens' UpdatePatchBaselineResponse (Maybe Text)
upbrrsDescription = lens _upbrrsDescription (\s a -> s {_upbrrsDescription = a})

-- | A list of explicitly approved patches for the baseline.
upbrrsApprovedPatches :: Lens' UpdatePatchBaselineResponse [Text]
upbrrsApprovedPatches = lens _upbrrsApprovedPatches (\s a -> s {_upbrrsApprovedPatches = a}) . _Default . _Coerce

-- | The action specified to take on patches included in the RejectedPatches list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.
upbrrsRejectedPatchesAction :: Lens' UpdatePatchBaselineResponse (Maybe PatchAction)
upbrrsRejectedPatchesAction = lens _upbrrsRejectedPatchesAction (\s a -> s {_upbrrsRejectedPatchesAction = a})

-- | The operating system rule used by the updated patch baseline.
upbrrsOperatingSystem :: Lens' UpdatePatchBaselineResponse (Maybe OperatingSystem)
upbrrsOperatingSystem = lens _upbrrsOperatingSystem (\s a -> s {_upbrrsOperatingSystem = a})

-- | A set of global filters used to exclude patches from the baseline.
upbrrsGlobalFilters :: Lens' UpdatePatchBaselineResponse (Maybe PatchFilterGroup)
upbrrsGlobalFilters = lens _upbrrsGlobalFilters (\s a -> s {_upbrrsGlobalFilters = a})

-- | A set of rules used to include patches in the baseline.
upbrrsApprovalRules :: Lens' UpdatePatchBaselineResponse (Maybe PatchRuleGroup)
upbrrsApprovalRules = lens _upbrrsApprovalRules (\s a -> s {_upbrrsApprovalRules = a})

-- | -- | The response status code.
upbrrsResponseStatus :: Lens' UpdatePatchBaselineResponse Int
upbrrsResponseStatus = lens _upbrrsResponseStatus (\s a -> s {_upbrrsResponseStatus = a})

instance NFData UpdatePatchBaselineResponse
