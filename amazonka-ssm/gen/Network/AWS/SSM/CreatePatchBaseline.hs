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
-- Module      : Network.AWS.SSM.CreatePatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a patch baseline.
module Network.AWS.SSM.CreatePatchBaseline
  ( -- * Creating a Request
    createPatchBaseline,
    CreatePatchBaseline,

    -- * Request Lenses
    cpbSources,
    cpbRejectedPatches,
    cpbApprovedPatchesEnableNonSecurity,
    cpbApprovedPatchesComplianceLevel,
    cpbTags,
    cpbDescription,
    cpbApprovedPatches,
    cpbRejectedPatchesAction,
    cpbOperatingSystem,
    cpbGlobalFilters,
    cpbClientToken,
    cpbApprovalRules,
    cpbName,

    -- * Destructuring the Response
    createPatchBaselineResponse,
    CreatePatchBaselineResponse,

    -- * Response Lenses
    cpbrrsBaselineId,
    cpbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'createPatchBaseline' smart constructor.
data CreatePatchBaseline = CreatePatchBaseline'
  { _cpbSources ::
      !(Maybe [PatchSource]),
    _cpbRejectedPatches ::
      !(Maybe [Text]),
    _cpbApprovedPatchesEnableNonSecurity ::
      !(Maybe Bool),
    _cpbApprovedPatchesComplianceLevel ::
      !(Maybe PatchComplianceLevel),
    _cpbTags :: !(Maybe [Tag]),
    _cpbDescription ::
      !(Maybe Text),
    _cpbApprovedPatches ::
      !(Maybe [Text]),
    _cpbRejectedPatchesAction ::
      !(Maybe PatchAction),
    _cpbOperatingSystem ::
      !(Maybe OperatingSystem),
    _cpbGlobalFilters ::
      !(Maybe PatchFilterGroup),
    _cpbClientToken ::
      !(Maybe Text),
    _cpbApprovalRules ::
      !(Maybe PatchRuleGroup),
    _cpbName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpbSources' - Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
--
-- * 'cpbRejectedPatches' - A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
--
-- * 'cpbApprovedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
--
-- * 'cpbApprovedPatchesComplianceLevel' - Defines the compliance level for approved patches. When an approved patch is reported as missing, this value describes the severity of the compliance violation. The default value is UNSPECIFIED.
--
-- * 'cpbTags' - Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a patch baseline to identify the severity level of patches it specifies and the operating system family it applies to. In this case, you could specify the following key name/value pairs:     * @Key=PatchSeverity,Value=Critical@      * @Key=OS,Value=Windows@
--
-- * 'cpbDescription' - A description of the patch baseline.
--
-- * 'cpbApprovedPatches' - A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
--
-- * 'cpbRejectedPatchesAction' - The action for Patch Manager to take on patches included in the RejectedPackages list.     * __ALLOW_AS_DEPENDENCY__ : A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as /InstalledOther/ . This is the default action if no option is specified.     * __BLOCK__ : Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as /InstalledRejected/ .
--
-- * 'cpbOperatingSystem' - Defines the operating system the patch baseline applies to. The Default value is WINDOWS.
--
-- * 'cpbGlobalFilters' - A set of global filters used to include patches in the baseline.
--
-- * 'cpbClientToken' - User-provided idempotency token.
--
-- * 'cpbApprovalRules' - A set of rules used to include patches in the baseline.
--
-- * 'cpbName' - The name of the patch baseline.
createPatchBaseline ::
  -- | 'cpbName'
  Text ->
  CreatePatchBaseline
createPatchBaseline pName_ =
  CreatePatchBaseline'
    { _cpbSources = Nothing,
      _cpbRejectedPatches = Nothing,
      _cpbApprovedPatchesEnableNonSecurity = Nothing,
      _cpbApprovedPatchesComplianceLevel = Nothing,
      _cpbTags = Nothing,
      _cpbDescription = Nothing,
      _cpbApprovedPatches = Nothing,
      _cpbRejectedPatchesAction = Nothing,
      _cpbOperatingSystem = Nothing,
      _cpbGlobalFilters = Nothing,
      _cpbClientToken = Nothing,
      _cpbApprovalRules = Nothing,
      _cpbName = pName_
    }

-- | Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
cpbSources :: Lens' CreatePatchBaseline [PatchSource]
cpbSources = lens _cpbSources (\s a -> s {_cpbSources = a}) . _Default . _Coerce

-- | A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
cpbRejectedPatches :: Lens' CreatePatchBaseline [Text]
cpbRejectedPatches = lens _cpbRejectedPatches (\s a -> s {_cpbRejectedPatches = a}) . _Default . _Coerce

-- | Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
cpbApprovedPatchesEnableNonSecurity :: Lens' CreatePatchBaseline (Maybe Bool)
cpbApprovedPatchesEnableNonSecurity = lens _cpbApprovedPatchesEnableNonSecurity (\s a -> s {_cpbApprovedPatchesEnableNonSecurity = a})

-- | Defines the compliance level for approved patches. When an approved patch is reported as missing, this value describes the severity of the compliance violation. The default value is UNSPECIFIED.
cpbApprovedPatchesComplianceLevel :: Lens' CreatePatchBaseline (Maybe PatchComplianceLevel)
cpbApprovedPatchesComplianceLevel = lens _cpbApprovedPatchesComplianceLevel (\s a -> s {_cpbApprovedPatchesComplianceLevel = a})

-- | Optional metadata that you assign to a resource. Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a patch baseline to identify the severity level of patches it specifies and the operating system family it applies to. In this case, you could specify the following key name/value pairs:     * @Key=PatchSeverity,Value=Critical@      * @Key=OS,Value=Windows@
cpbTags :: Lens' CreatePatchBaseline [Tag]
cpbTags = lens _cpbTags (\s a -> s {_cpbTags = a}) . _Default . _Coerce

-- | A description of the patch baseline.
cpbDescription :: Lens' CreatePatchBaseline (Maybe Text)
cpbDescription = lens _cpbDescription (\s a -> s {_cpbDescription = a})

-- | A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
cpbApprovedPatches :: Lens' CreatePatchBaseline [Text]
cpbApprovedPatches = lens _cpbApprovedPatches (\s a -> s {_cpbApprovedPatches = a}) . _Default . _Coerce

-- | The action for Patch Manager to take on patches included in the RejectedPackages list.     * __ALLOW_AS_DEPENDENCY__ : A package in the Rejected patches list is installed only if it is a dependency of another package. It is considered compliant with the patch baseline, and its status is reported as /InstalledOther/ . This is the default action if no option is specified.     * __BLOCK__ : Packages in the RejectedPatches list, and packages that include them as dependencies, are not installed under any circumstances. If a package was installed before it was added to the Rejected patches list, it is considered non-compliant with the patch baseline, and its status is reported as /InstalledRejected/ .
cpbRejectedPatchesAction :: Lens' CreatePatchBaseline (Maybe PatchAction)
cpbRejectedPatchesAction = lens _cpbRejectedPatchesAction (\s a -> s {_cpbRejectedPatchesAction = a})

-- | Defines the operating system the patch baseline applies to. The Default value is WINDOWS.
cpbOperatingSystem :: Lens' CreatePatchBaseline (Maybe OperatingSystem)
cpbOperatingSystem = lens _cpbOperatingSystem (\s a -> s {_cpbOperatingSystem = a})

-- | A set of global filters used to include patches in the baseline.
cpbGlobalFilters :: Lens' CreatePatchBaseline (Maybe PatchFilterGroup)
cpbGlobalFilters = lens _cpbGlobalFilters (\s a -> s {_cpbGlobalFilters = a})

-- | User-provided idempotency token.
cpbClientToken :: Lens' CreatePatchBaseline (Maybe Text)
cpbClientToken = lens _cpbClientToken (\s a -> s {_cpbClientToken = a})

-- | A set of rules used to include patches in the baseline.
cpbApprovalRules :: Lens' CreatePatchBaseline (Maybe PatchRuleGroup)
cpbApprovalRules = lens _cpbApprovalRules (\s a -> s {_cpbApprovalRules = a})

-- | The name of the patch baseline.
cpbName :: Lens' CreatePatchBaseline Text
cpbName = lens _cpbName (\s a -> s {_cpbName = a})

instance AWSRequest CreatePatchBaseline where
  type
    Rs CreatePatchBaseline =
      CreatePatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          CreatePatchBaselineResponse'
            <$> (x .?> "BaselineId") <*> (pure (fromEnum s))
      )

instance Hashable CreatePatchBaseline

instance NFData CreatePatchBaseline

instance ToHeaders CreatePatchBaseline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.CreatePatchBaseline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePatchBaseline where
  toJSON CreatePatchBaseline' {..} =
    object
      ( catMaybes
          [ ("Sources" .=) <$> _cpbSources,
            ("RejectedPatches" .=) <$> _cpbRejectedPatches,
            ("ApprovedPatchesEnableNonSecurity" .=)
              <$> _cpbApprovedPatchesEnableNonSecurity,
            ("ApprovedPatchesComplianceLevel" .=)
              <$> _cpbApprovedPatchesComplianceLevel,
            ("Tags" .=) <$> _cpbTags,
            ("Description" .=) <$> _cpbDescription,
            ("ApprovedPatches" .=) <$> _cpbApprovedPatches,
            ("RejectedPatchesAction" .=)
              <$> _cpbRejectedPatchesAction,
            ("OperatingSystem" .=) <$> _cpbOperatingSystem,
            ("GlobalFilters" .=) <$> _cpbGlobalFilters,
            ("ClientToken" .=) <$> _cpbClientToken,
            ("ApprovalRules" .=) <$> _cpbApprovalRules,
            Just ("Name" .= _cpbName)
          ]
      )

instance ToPath CreatePatchBaseline where
  toPath = const "/"

instance ToQuery CreatePatchBaseline where
  toQuery = const mempty

-- | /See:/ 'createPatchBaselineResponse' smart constructor.
data CreatePatchBaselineResponse = CreatePatchBaselineResponse'
  { _cpbrrsBaselineId ::
      !(Maybe Text),
    _cpbrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreatePatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpbrrsBaselineId' - The ID of the created patch baseline.
--
-- * 'cpbrrsResponseStatus' - -- | The response status code.
createPatchBaselineResponse ::
  -- | 'cpbrrsResponseStatus'
  Int ->
  CreatePatchBaselineResponse
createPatchBaselineResponse pResponseStatus_ =
  CreatePatchBaselineResponse'
    { _cpbrrsBaselineId =
        Nothing,
      _cpbrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the created patch baseline.
cpbrrsBaselineId :: Lens' CreatePatchBaselineResponse (Maybe Text)
cpbrrsBaselineId = lens _cpbrrsBaselineId (\s a -> s {_cpbrrsBaselineId = a})

-- | -- | The response status code.
cpbrrsResponseStatus :: Lens' CreatePatchBaselineResponse Int
cpbrrsResponseStatus = lens _cpbrrsResponseStatus (\s a -> s {_cpbrrsResponseStatus = a})

instance NFData CreatePatchBaselineResponse
