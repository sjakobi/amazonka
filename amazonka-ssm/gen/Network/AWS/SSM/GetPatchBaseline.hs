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
-- Module      : Network.AWS.SSM.GetPatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a patch baseline.
module Network.AWS.SSM.GetPatchBaseline
  ( -- * Creating a Request
    getPatchBaseline,
    GetPatchBaseline,

    -- * Request Lenses
    gpbBaselineId,

    -- * Destructuring the Response
    getPatchBaselineResponse,
    GetPatchBaselineResponse,

    -- * Response Lenses
    gpbrrsCreatedDate,
    gpbrrsBaselineId,
    gpbrrsSources,
    gpbrrsRejectedPatches,
    gpbrrsApprovedPatchesEnableNonSecurity,
    gpbrrsApprovedPatchesComplianceLevel,
    gpbrrsModifiedDate,
    gpbrrsPatchGroups,
    gpbrrsName,
    gpbrrsDescription,
    gpbrrsApprovedPatches,
    gpbrrsRejectedPatchesAction,
    gpbrrsOperatingSystem,
    gpbrrsGlobalFilters,
    gpbrrsApprovalRules,
    gpbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getPatchBaseline' smart constructor.
newtype GetPatchBaseline = GetPatchBaseline'
  { _gpbBaselineId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbBaselineId' - The ID of the patch baseline to retrieve.
getPatchBaseline ::
  -- | 'gpbBaselineId'
  Text ->
  GetPatchBaseline
getPatchBaseline pBaselineId_ =
  GetPatchBaseline' {_gpbBaselineId = pBaselineId_}

-- | The ID of the patch baseline to retrieve.
gpbBaselineId :: Lens' GetPatchBaseline Text
gpbBaselineId = lens _gpbBaselineId (\s a -> s {_gpbBaselineId = a})

instance AWSRequest GetPatchBaseline where
  type Rs GetPatchBaseline = GetPatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetPatchBaselineResponse'
            <$> (x .?> "CreatedDate")
            <*> (x .?> "BaselineId")
            <*> (x .?> "Sources" .!@ mempty)
            <*> (x .?> "RejectedPatches" .!@ mempty)
            <*> (x .?> "ApprovedPatchesEnableNonSecurity")
            <*> (x .?> "ApprovedPatchesComplianceLevel")
            <*> (x .?> "ModifiedDate")
            <*> (x .?> "PatchGroups" .!@ mempty)
            <*> (x .?> "Name")
            <*> (x .?> "Description")
            <*> (x .?> "ApprovedPatches" .!@ mempty)
            <*> (x .?> "RejectedPatchesAction")
            <*> (x .?> "OperatingSystem")
            <*> (x .?> "GlobalFilters")
            <*> (x .?> "ApprovalRules")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPatchBaseline

instance NFData GetPatchBaseline

instance ToHeaders GetPatchBaseline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetPatchBaseline" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPatchBaseline where
  toJSON GetPatchBaseline' {..} =
    object
      (catMaybes [Just ("BaselineId" .= _gpbBaselineId)])

instance ToPath GetPatchBaseline where
  toPath = const "/"

instance ToQuery GetPatchBaseline where
  toQuery = const mempty

-- | /See:/ 'getPatchBaselineResponse' smart constructor.
data GetPatchBaselineResponse = GetPatchBaselineResponse'
  { _gpbrrsCreatedDate ::
      !(Maybe POSIX),
    _gpbrrsBaselineId ::
      !(Maybe Text),
    _gpbrrsSources ::
      !( Maybe
           [PatchSource]
       ),
    _gpbrrsRejectedPatches ::
      !(Maybe [Text]),
    _gpbrrsApprovedPatchesEnableNonSecurity ::
      !(Maybe Bool),
    _gpbrrsApprovedPatchesComplianceLevel ::
      !( Maybe
           PatchComplianceLevel
       ),
    _gpbrrsModifiedDate ::
      !(Maybe POSIX),
    _gpbrrsPatchGroups ::
      !(Maybe [Text]),
    _gpbrrsName ::
      !(Maybe Text),
    _gpbrrsDescription ::
      !(Maybe Text),
    _gpbrrsApprovedPatches ::
      !(Maybe [Text]),
    _gpbrrsRejectedPatchesAction ::
      !(Maybe PatchAction),
    _gpbrrsOperatingSystem ::
      !( Maybe
           OperatingSystem
       ),
    _gpbrrsGlobalFilters ::
      !( Maybe
           PatchFilterGroup
       ),
    _gpbrrsApprovalRules ::
      !( Maybe
           PatchRuleGroup
       ),
    _gpbrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpbrrsCreatedDate' - The date the patch baseline was created.
--
-- * 'gpbrrsBaselineId' - The ID of the retrieved patch baseline.
--
-- * 'gpbrrsSources' - Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
--
-- * 'gpbrrsRejectedPatches' - A list of explicitly rejected patches for the baseline.
--
-- * 'gpbrrsApprovedPatchesEnableNonSecurity' - Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
--
-- * 'gpbrrsApprovedPatchesComplianceLevel' - Returns the specified compliance severity level for approved patches in the patch baseline.
--
-- * 'gpbrrsModifiedDate' - The date the patch baseline was last modified.
--
-- * 'gpbrrsPatchGroups' - Patch groups included in the patch baseline.
--
-- * 'gpbrrsName' - The name of the patch baseline.
--
-- * 'gpbrrsDescription' - A description of the patch baseline.
--
-- * 'gpbrrsApprovedPatches' - A list of explicitly approved patches for the baseline.
--
-- * 'gpbrrsRejectedPatchesAction' - The action specified to take on patches included in the RejectedPatches list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.
--
-- * 'gpbrrsOperatingSystem' - Returns the operating system specified for the patch baseline.
--
-- * 'gpbrrsGlobalFilters' - A set of global filters used to exclude patches from the baseline.
--
-- * 'gpbrrsApprovalRules' - A set of rules used to include patches in the baseline.
--
-- * 'gpbrrsResponseStatus' - -- | The response status code.
getPatchBaselineResponse ::
  -- | 'gpbrrsResponseStatus'
  Int ->
  GetPatchBaselineResponse
getPatchBaselineResponse pResponseStatus_ =
  GetPatchBaselineResponse'
    { _gpbrrsCreatedDate =
        Nothing,
      _gpbrrsBaselineId = Nothing,
      _gpbrrsSources = Nothing,
      _gpbrrsRejectedPatches = Nothing,
      _gpbrrsApprovedPatchesEnableNonSecurity = Nothing,
      _gpbrrsApprovedPatchesComplianceLevel = Nothing,
      _gpbrrsModifiedDate = Nothing,
      _gpbrrsPatchGroups = Nothing,
      _gpbrrsName = Nothing,
      _gpbrrsDescription = Nothing,
      _gpbrrsApprovedPatches = Nothing,
      _gpbrrsRejectedPatchesAction = Nothing,
      _gpbrrsOperatingSystem = Nothing,
      _gpbrrsGlobalFilters = Nothing,
      _gpbrrsApprovalRules = Nothing,
      _gpbrrsResponseStatus = pResponseStatus_
    }

-- | The date the patch baseline was created.
gpbrrsCreatedDate :: Lens' GetPatchBaselineResponse (Maybe UTCTime)
gpbrrsCreatedDate = lens _gpbrrsCreatedDate (\s a -> s {_gpbrrsCreatedDate = a}) . mapping _Time

-- | The ID of the retrieved patch baseline.
gpbrrsBaselineId :: Lens' GetPatchBaselineResponse (Maybe Text)
gpbrrsBaselineId = lens _gpbrrsBaselineId (\s a -> s {_gpbrrsBaselineId = a})

-- | Information about the patches to use to update the instances, including target operating systems and source repositories. Applies to Linux instances only.
gpbrrsSources :: Lens' GetPatchBaselineResponse [PatchSource]
gpbrrsSources = lens _gpbrrsSources (\s a -> s {_gpbrrsSources = a}) . _Default . _Coerce

-- | A list of explicitly rejected patches for the baseline.
gpbrrsRejectedPatches :: Lens' GetPatchBaselineResponse [Text]
gpbrrsRejectedPatches = lens _gpbrrsRejectedPatches (\s a -> s {_gpbrrsRejectedPatches = a}) . _Default . _Coerce

-- | Indicates whether the list of approved patches includes non-security updates that should be applied to the instances. The default value is 'false'. Applies to Linux instances only.
gpbrrsApprovedPatchesEnableNonSecurity :: Lens' GetPatchBaselineResponse (Maybe Bool)
gpbrrsApprovedPatchesEnableNonSecurity = lens _gpbrrsApprovedPatchesEnableNonSecurity (\s a -> s {_gpbrrsApprovedPatchesEnableNonSecurity = a})

-- | Returns the specified compliance severity level for approved patches in the patch baseline.
gpbrrsApprovedPatchesComplianceLevel :: Lens' GetPatchBaselineResponse (Maybe PatchComplianceLevel)
gpbrrsApprovedPatchesComplianceLevel = lens _gpbrrsApprovedPatchesComplianceLevel (\s a -> s {_gpbrrsApprovedPatchesComplianceLevel = a})

-- | The date the patch baseline was last modified.
gpbrrsModifiedDate :: Lens' GetPatchBaselineResponse (Maybe UTCTime)
gpbrrsModifiedDate = lens _gpbrrsModifiedDate (\s a -> s {_gpbrrsModifiedDate = a}) . mapping _Time

-- | Patch groups included in the patch baseline.
gpbrrsPatchGroups :: Lens' GetPatchBaselineResponse [Text]
gpbrrsPatchGroups = lens _gpbrrsPatchGroups (\s a -> s {_gpbrrsPatchGroups = a}) . _Default . _Coerce

-- | The name of the patch baseline.
gpbrrsName :: Lens' GetPatchBaselineResponse (Maybe Text)
gpbrrsName = lens _gpbrrsName (\s a -> s {_gpbrrsName = a})

-- | A description of the patch baseline.
gpbrrsDescription :: Lens' GetPatchBaselineResponse (Maybe Text)
gpbrrsDescription = lens _gpbrrsDescription (\s a -> s {_gpbrrsDescription = a})

-- | A list of explicitly approved patches for the baseline.
gpbrrsApprovedPatches :: Lens' GetPatchBaselineResponse [Text]
gpbrrsApprovedPatches = lens _gpbrrsApprovedPatches (\s a -> s {_gpbrrsApprovedPatches = a}) . _Default . _Coerce

-- | The action specified to take on patches included in the RejectedPatches list. A patch can be allowed only if it is a dependency of another package, or blocked entirely along with packages that include it as a dependency.
gpbrrsRejectedPatchesAction :: Lens' GetPatchBaselineResponse (Maybe PatchAction)
gpbrrsRejectedPatchesAction = lens _gpbrrsRejectedPatchesAction (\s a -> s {_gpbrrsRejectedPatchesAction = a})

-- | Returns the operating system specified for the patch baseline.
gpbrrsOperatingSystem :: Lens' GetPatchBaselineResponse (Maybe OperatingSystem)
gpbrrsOperatingSystem = lens _gpbrrsOperatingSystem (\s a -> s {_gpbrrsOperatingSystem = a})

-- | A set of global filters used to exclude patches from the baseline.
gpbrrsGlobalFilters :: Lens' GetPatchBaselineResponse (Maybe PatchFilterGroup)
gpbrrsGlobalFilters = lens _gpbrrsGlobalFilters (\s a -> s {_gpbrrsGlobalFilters = a})

-- | A set of rules used to include patches in the baseline.
gpbrrsApprovalRules :: Lens' GetPatchBaselineResponse (Maybe PatchRuleGroup)
gpbrrsApprovalRules = lens _gpbrrsApprovalRules (\s a -> s {_gpbrrsApprovalRules = a})

-- | -- | The response status code.
gpbrrsResponseStatus :: Lens' GetPatchBaselineResponse Int
gpbrrsResponseStatus = lens _gpbrrsResponseStatus (\s a -> s {_gpbrrsResponseStatus = a})

instance NFData GetPatchBaselineResponse
