{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ResourceDataSyncSourceWithState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceDataSyncSourceWithState where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.ResourceDataSyncAWSOrganizationsSource

-- | The data type name for including resource data sync state. There are four sync states:
--
--
-- @OrganizationNotExists@ (Your organization doesn't exist)
--
-- @NoPermissions@ (The system can't locate the service-linked role. This role is automatically created when a user creates a resource data sync in Explorer.)
--
-- @InvalidOrganizationalUnit@ (You specified or selected an invalid unit in the resource data sync configuration.)
--
-- @TrustedAccessDisabled@ (You disabled Systems Manager access in the organization in AWS Organizations.)
--
--
-- /See:/ 'resourceDataSyncSourceWithState' smart constructor.
data ResourceDataSyncSourceWithState = ResourceDataSyncSourceWithState'
  { _rdsswsIncludeFutureRegions ::
      !( Maybe
           Bool
       ),
    _rdsswsState ::
      !( Maybe
           Text
       ),
    _rdsswsSourceRegions ::
      !( Maybe
           [Text]
       ),
    _rdsswsAWSOrganizationsSource ::
      !( Maybe
           ResourceDataSyncAWSOrganizationsSource
       ),
    _rdsswsSourceType ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResourceDataSyncSourceWithState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdsswsIncludeFutureRegions' - Whether to automatically synchronize and aggregate data from new AWS Regions when those Regions come online.
--
-- * 'rdsswsState' - The data type name for including resource data sync state. There are four sync states: @OrganizationNotExists@ : Your organization doesn't exist. @NoPermissions@ : The system can't locate the service-linked role. This role is automatically created when a user creates a resource data sync in Explorer. @InvalidOrganizationalUnit@ : You specified or selected an invalid unit in the resource data sync configuration. @TrustedAccessDisabled@ : You disabled Systems Manager access in the organization in AWS Organizations.
--
-- * 'rdsswsSourceRegions' - The @SyncSource@ AWS Regions included in the resource data sync.
--
-- * 'rdsswsAWSOrganizationsSource' - The field name in @SyncSource@ for the @ResourceDataSyncAwsOrganizationsSource@ type.
--
-- * 'rdsswsSourceType' - The type of data source for the resource data sync. @SourceType@ is either @AwsOrganizations@ (if an organization is present in AWS Organizations) or @singleAccountMultiRegions@ .
resourceDataSyncSourceWithState ::
  ResourceDataSyncSourceWithState
resourceDataSyncSourceWithState =
  ResourceDataSyncSourceWithState'
    { _rdsswsIncludeFutureRegions =
        Nothing,
      _rdsswsState = Nothing,
      _rdsswsSourceRegions = Nothing,
      _rdsswsAWSOrganizationsSource = Nothing,
      _rdsswsSourceType = Nothing
    }

-- | Whether to automatically synchronize and aggregate data from new AWS Regions when those Regions come online.
rdsswsIncludeFutureRegions :: Lens' ResourceDataSyncSourceWithState (Maybe Bool)
rdsswsIncludeFutureRegions = lens _rdsswsIncludeFutureRegions (\s a -> s {_rdsswsIncludeFutureRegions = a})

-- | The data type name for including resource data sync state. There are four sync states: @OrganizationNotExists@ : Your organization doesn't exist. @NoPermissions@ : The system can't locate the service-linked role. This role is automatically created when a user creates a resource data sync in Explorer. @InvalidOrganizationalUnit@ : You specified or selected an invalid unit in the resource data sync configuration. @TrustedAccessDisabled@ : You disabled Systems Manager access in the organization in AWS Organizations.
rdsswsState :: Lens' ResourceDataSyncSourceWithState (Maybe Text)
rdsswsState = lens _rdsswsState (\s a -> s {_rdsswsState = a})

-- | The @SyncSource@ AWS Regions included in the resource data sync.
rdsswsSourceRegions :: Lens' ResourceDataSyncSourceWithState [Text]
rdsswsSourceRegions = lens _rdsswsSourceRegions (\s a -> s {_rdsswsSourceRegions = a}) . _Default . _Coerce

-- | The field name in @SyncSource@ for the @ResourceDataSyncAwsOrganizationsSource@ type.
rdsswsAWSOrganizationsSource :: Lens' ResourceDataSyncSourceWithState (Maybe ResourceDataSyncAWSOrganizationsSource)
rdsswsAWSOrganizationsSource = lens _rdsswsAWSOrganizationsSource (\s a -> s {_rdsswsAWSOrganizationsSource = a})

-- | The type of data source for the resource data sync. @SourceType@ is either @AwsOrganizations@ (if an organization is present in AWS Organizations) or @singleAccountMultiRegions@ .
rdsswsSourceType :: Lens' ResourceDataSyncSourceWithState (Maybe Text)
rdsswsSourceType = lens _rdsswsSourceType (\s a -> s {_rdsswsSourceType = a})

instance FromJSON ResourceDataSyncSourceWithState where
  parseJSON =
    withObject
      "ResourceDataSyncSourceWithState"
      ( \x ->
          ResourceDataSyncSourceWithState'
            <$> (x .:? "IncludeFutureRegions")
            <*> (x .:? "State")
            <*> (x .:? "SourceRegions" .!= mempty)
            <*> (x .:? "AwsOrganizationsSource")
            <*> (x .:? "SourceType")
      )

instance Hashable ResourceDataSyncSourceWithState

instance NFData ResourceDataSyncSourceWithState
