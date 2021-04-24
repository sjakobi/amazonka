{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.BaselineOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.BaselineOverride where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OperatingSystem
import Network.AWS.SSM.Types.PatchAction
import Network.AWS.SSM.Types.PatchComplianceLevel
import Network.AWS.SSM.Types.PatchFilterGroup
import Network.AWS.SSM.Types.PatchRuleGroup
import Network.AWS.SSM.Types.PatchSource

-- | Defines the basic information about a patch baseline override.
--
--
--
-- /See:/ 'baselineOverride' smart constructor.
data BaselineOverride = BaselineOverride'
  { _boSources ::
      !(Maybe [PatchSource]),
    _boRejectedPatches :: !(Maybe [Text]),
    _boApprovedPatchesEnableNonSecurity ::
      !(Maybe Bool),
    _boApprovedPatchesComplianceLevel ::
      !(Maybe PatchComplianceLevel),
    _boApprovedPatches :: !(Maybe [Text]),
    _boRejectedPatchesAction ::
      !(Maybe PatchAction),
    _boOperatingSystem ::
      !(Maybe OperatingSystem),
    _boGlobalFilters ::
      !(Maybe PatchFilterGroup),
    _boApprovalRules ::
      !(Maybe PatchRuleGroup)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BaselineOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boSources' - Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
--
-- * 'boRejectedPatches' - A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
--
-- * 'boApprovedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
--
-- * 'boApprovedPatchesComplianceLevel' - Defines the compliance level for approved patches. When an approved patch is reported as missing, this value describes the severity of the compliance violation.
--
-- * 'boApprovedPatches' - A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
--
-- * 'boRejectedPatchesAction' - The action for Patch Manager to take on patches included in the RejectedPackages list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.
--
-- * 'boOperatingSystem' - The operating system rule used by the patch baseline override.
--
-- * 'boGlobalFilters' - Undocumented member.
--
-- * 'boApprovalRules' - Undocumented member.
baselineOverride ::
  BaselineOverride
baselineOverride =
  BaselineOverride'
    { _boSources = Nothing,
      _boRejectedPatches = Nothing,
      _boApprovedPatchesEnableNonSecurity = Nothing,
      _boApprovedPatchesComplianceLevel = Nothing,
      _boApprovedPatches = Nothing,
      _boRejectedPatchesAction = Nothing,
      _boOperatingSystem = Nothing,
      _boGlobalFilters = Nothing,
      _boApprovalRules = Nothing
    }

-- | Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
boSources :: Lens' BaselineOverride [PatchSource]
boSources = lens _boSources (\s a -> s {_boSources = a}) . _Default . _Coerce

-- | A list of explicitly rejected patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
boRejectedPatches :: Lens' BaselineOverride [Text]
boRejectedPatches = lens _boRejectedPatches (\s a -> s {_boRejectedPatches = a}) . _Default . _Coerce

-- | Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
boApprovedPatchesEnableNonSecurity :: Lens' BaselineOverride (Maybe Bool)
boApprovedPatchesEnableNonSecurity = lens _boApprovedPatchesEnableNonSecurity (\s a -> s {_boApprovedPatchesEnableNonSecurity = a})

-- | Defines the compliance level for approved patches. When an approved patch is reported as missing, this value describes the severity of the compliance violation.
boApprovedPatchesComplianceLevel :: Lens' BaselineOverride (Maybe PatchComplianceLevel)
boApprovedPatchesComplianceLevel = lens _boApprovedPatchesComplianceLevel (\s a -> s {_boApprovedPatchesComplianceLevel = a})

-- | A list of explicitly approved patches for the baseline. For information about accepted formats for lists of approved patches and rejected patches, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html About package name formats for approved and rejected patch lists> in the /AWS Systems Manager User Guide/ .
boApprovedPatches :: Lens' BaselineOverride [Text]
boApprovedPatches = lens _boApprovedPatches (\s a -> s {_boApprovedPatches = a}) . _Default . _Coerce

-- | The action for Patch Manager to take on patches included in the RejectedPackages list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.
boRejectedPatchesAction :: Lens' BaselineOverride (Maybe PatchAction)
boRejectedPatchesAction = lens _boRejectedPatchesAction (\s a -> s {_boRejectedPatchesAction = a})

-- | The operating system rule used by the patch baseline override.
boOperatingSystem :: Lens' BaselineOverride (Maybe OperatingSystem)
boOperatingSystem = lens _boOperatingSystem (\s a -> s {_boOperatingSystem = a})

-- | Undocumented member.
boGlobalFilters :: Lens' BaselineOverride (Maybe PatchFilterGroup)
boGlobalFilters = lens _boGlobalFilters (\s a -> s {_boGlobalFilters = a})

-- | Undocumented member.
boApprovalRules :: Lens' BaselineOverride (Maybe PatchRuleGroup)
boApprovalRules = lens _boApprovalRules (\s a -> s {_boApprovalRules = a})

instance Hashable BaselineOverride

instance NFData BaselineOverride

instance ToJSON BaselineOverride where
  toJSON BaselineOverride' {..} =
    object
      ( catMaybes
          [ ("Sources" .=) <$> _boSources,
            ("RejectedPatches" .=) <$> _boRejectedPatches,
            ("ApprovedPatchesEnableNonSecurity" .=)
              <$> _boApprovedPatchesEnableNonSecurity,
            ("ApprovedPatchesComplianceLevel" .=)
              <$> _boApprovedPatchesComplianceLevel,
            ("ApprovedPatches" .=) <$> _boApprovedPatches,
            ("RejectedPatchesAction" .=)
              <$> _boRejectedPatchesAction,
            ("OperatingSystem" .=) <$> _boOperatingSystem,
            ("GlobalFilters" .=) <$> _boGlobalFilters,
            ("ApprovalRules" .=) <$> _boApprovalRules
          ]
      )
