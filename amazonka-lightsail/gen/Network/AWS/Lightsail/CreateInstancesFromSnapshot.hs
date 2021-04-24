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
-- Module      : Network.AWS.Lightsail.CreateInstancesFromSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more new instances from a manual or automatic snapshot of an instance.
--
--
-- The @create instances from snapshot@ operation supports tag-based access control via request tags and resource tags applied to the resource identified by @instance snapshot name@ . For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateInstancesFromSnapshot
  ( -- * Creating a Request
    createInstancesFromSnapshot,
    CreateInstancesFromSnapshot,

    -- * Request Lenses
    cifsIpAddressType,
    cifsRestoreDate,
    cifsUserData,
    cifsAddOns,
    cifsAttachedDiskMapping,
    cifsInstanceSnapshotName,
    cifsKeyPairName,
    cifsUseLatestRestorableAutoSnapshot,
    cifsTags,
    cifsSourceInstanceName,
    cifsInstanceNames,
    cifsAvailabilityZone,
    cifsBundleId,

    -- * Destructuring the Response
    createInstancesFromSnapshotResponse,
    CreateInstancesFromSnapshotResponse,

    -- * Response Lenses
    cifsrrsOperations,
    cifsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createInstancesFromSnapshot' smart constructor.
data CreateInstancesFromSnapshot = CreateInstancesFromSnapshot'
  { _cifsIpAddressType ::
      !( Maybe
           IPAddressType
       ),
    _cifsRestoreDate ::
      !(Maybe Text),
    _cifsUserData ::
      !(Maybe Text),
    _cifsAddOns ::
      !( Maybe
           [AddOnRequest]
       ),
    _cifsAttachedDiskMapping ::
      !( Maybe
           ( Map
               Text
               [DiskMap]
           )
       ),
    _cifsInstanceSnapshotName ::
      !(Maybe Text),
    _cifsKeyPairName ::
      !(Maybe Text),
    _cifsUseLatestRestorableAutoSnapshot ::
      !(Maybe Bool),
    _cifsTags ::
      !(Maybe [Tag]),
    _cifsSourceInstanceName ::
      !(Maybe Text),
    _cifsInstanceNames ::
      ![Text],
    _cifsAvailabilityZone ::
      !Text,
    _cifsBundleId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateInstancesFromSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cifsIpAddressType' - The IP address type for the instance. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6. The default value is @dualstack@ .
--
-- * 'cifsRestoreDate' - The date of the automatic snapshot to use for the new instance. Use the @get auto snapshots@ operation to identify the dates of the available automatic snapshots. Constraints:     * Must be specified in @YYYY-MM-DD@ format.     * This parameter cannot be defined together with the @use latest restorable auto snapshot@ parameter. The @restore date@ and @use latest restorable auto snapshot@ parameters are mutually exclusive.     * Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
--
-- * 'cifsUserData' - You can create a launch script that configures a server with additional user data. For example, @apt-get -y update@ .
--
-- * 'cifsAddOns' - An array of objects representing the add-ons to enable for the new instance.
--
-- * 'cifsAttachedDiskMapping' - An object containing information about one or more disk mappings.
--
-- * 'cifsInstanceSnapshotName' - The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots. Constraint:     * This parameter cannot be defined together with the @source instance name@ parameter. The @instance snapshot name@ and @source instance name@ parameters are mutually exclusive.
--
-- * 'cifsKeyPairName' - The name for your key pair.
--
-- * 'cifsUseLatestRestorableAutoSnapshot' - A Boolean value to indicate whether to use the latest available automatic snapshot. Constraints:     * This parameter cannot be defined together with the @restore date@ parameter. The @use latest restorable auto snapshot@ and @restore date@ parameters are mutually exclusive.     * Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
--
-- * 'cifsTags' - The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
--
-- * 'cifsSourceInstanceName' - The name of the source instance from which the source automatic snapshot was created. Constraints:     * This parameter cannot be defined together with the @instance snapshot name@ parameter. The @source instance name@ and @instance snapshot name@ parameters are mutually exclusive.     * Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
--
-- * 'cifsInstanceNames' - The names for your new instances.
--
-- * 'cifsAvailabilityZone' - The Availability Zone where you want to create your instances. Use the following formatting: @us-east-2a@ (case sensitive). You can get a list of Availability Zones by using the <http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html get regions> operation. Be sure to add the @include Availability Zones@ parameter to your request.
--
-- * 'cifsBundleId' - The bundle of specification information for your virtual private server (or /instance/ ), including the pricing plan (e.g., @micro_1_0@ ).
createInstancesFromSnapshot ::
  -- | 'cifsAvailabilityZone'
  Text ->
  -- | 'cifsBundleId'
  Text ->
  CreateInstancesFromSnapshot
createInstancesFromSnapshot
  pAvailabilityZone_
  pBundleId_ =
    CreateInstancesFromSnapshot'
      { _cifsIpAddressType =
          Nothing,
        _cifsRestoreDate = Nothing,
        _cifsUserData = Nothing,
        _cifsAddOns = Nothing,
        _cifsAttachedDiskMapping = Nothing,
        _cifsInstanceSnapshotName = Nothing,
        _cifsKeyPairName = Nothing,
        _cifsUseLatestRestorableAutoSnapshot = Nothing,
        _cifsTags = Nothing,
        _cifsSourceInstanceName = Nothing,
        _cifsInstanceNames = mempty,
        _cifsAvailabilityZone = pAvailabilityZone_,
        _cifsBundleId = pBundleId_
      }

-- | The IP address type for the instance. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6. The default value is @dualstack@ .
cifsIpAddressType :: Lens' CreateInstancesFromSnapshot (Maybe IPAddressType)
cifsIpAddressType = lens _cifsIpAddressType (\s a -> s {_cifsIpAddressType = a})

-- | The date of the automatic snapshot to use for the new instance. Use the @get auto snapshots@ operation to identify the dates of the available automatic snapshots. Constraints:     * Must be specified in @YYYY-MM-DD@ format.     * This parameter cannot be defined together with the @use latest restorable auto snapshot@ parameter. The @restore date@ and @use latest restorable auto snapshot@ parameters are mutually exclusive.     * Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
cifsRestoreDate :: Lens' CreateInstancesFromSnapshot (Maybe Text)
cifsRestoreDate = lens _cifsRestoreDate (\s a -> s {_cifsRestoreDate = a})

-- | You can create a launch script that configures a server with additional user data. For example, @apt-get -y update@ .
cifsUserData :: Lens' CreateInstancesFromSnapshot (Maybe Text)
cifsUserData = lens _cifsUserData (\s a -> s {_cifsUserData = a})

-- | An array of objects representing the add-ons to enable for the new instance.
cifsAddOns :: Lens' CreateInstancesFromSnapshot [AddOnRequest]
cifsAddOns = lens _cifsAddOns (\s a -> s {_cifsAddOns = a}) . _Default . _Coerce

-- | An object containing information about one or more disk mappings.
cifsAttachedDiskMapping :: Lens' CreateInstancesFromSnapshot (HashMap Text [DiskMap])
cifsAttachedDiskMapping = lens _cifsAttachedDiskMapping (\s a -> s {_cifsAttachedDiskMapping = a}) . _Default . _Map

-- | The name of the instance snapshot on which you are basing your new instances. Use the get instance snapshots operation to return information about your existing snapshots. Constraint:     * This parameter cannot be defined together with the @source instance name@ parameter. The @instance snapshot name@ and @source instance name@ parameters are mutually exclusive.
cifsInstanceSnapshotName :: Lens' CreateInstancesFromSnapshot (Maybe Text)
cifsInstanceSnapshotName = lens _cifsInstanceSnapshotName (\s a -> s {_cifsInstanceSnapshotName = a})

-- | The name for your key pair.
cifsKeyPairName :: Lens' CreateInstancesFromSnapshot (Maybe Text)
cifsKeyPairName = lens _cifsKeyPairName (\s a -> s {_cifsKeyPairName = a})

-- | A Boolean value to indicate whether to use the latest available automatic snapshot. Constraints:     * This parameter cannot be defined together with the @restore date@ parameter. The @use latest restorable auto snapshot@ and @restore date@ parameters are mutually exclusive.     * Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
cifsUseLatestRestorableAutoSnapshot :: Lens' CreateInstancesFromSnapshot (Maybe Bool)
cifsUseLatestRestorableAutoSnapshot = lens _cifsUseLatestRestorableAutoSnapshot (\s a -> s {_cifsUseLatestRestorableAutoSnapshot = a})

-- | The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
cifsTags :: Lens' CreateInstancesFromSnapshot [Tag]
cifsTags = lens _cifsTags (\s a -> s {_cifsTags = a}) . _Default . _Coerce

-- | The name of the source instance from which the source automatic snapshot was created. Constraints:     * This parameter cannot be defined together with the @instance snapshot name@ parameter. The @source instance name@ and @instance snapshot name@ parameters are mutually exclusive.     * Define this parameter only when creating a new instance from an automatic snapshot. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
cifsSourceInstanceName :: Lens' CreateInstancesFromSnapshot (Maybe Text)
cifsSourceInstanceName = lens _cifsSourceInstanceName (\s a -> s {_cifsSourceInstanceName = a})

-- | The names for your new instances.
cifsInstanceNames :: Lens' CreateInstancesFromSnapshot [Text]
cifsInstanceNames = lens _cifsInstanceNames (\s a -> s {_cifsInstanceNames = a}) . _Coerce

-- | The Availability Zone where you want to create your instances. Use the following formatting: @us-east-2a@ (case sensitive). You can get a list of Availability Zones by using the <http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html get regions> operation. Be sure to add the @include Availability Zones@ parameter to your request.
cifsAvailabilityZone :: Lens' CreateInstancesFromSnapshot Text
cifsAvailabilityZone = lens _cifsAvailabilityZone (\s a -> s {_cifsAvailabilityZone = a})

-- | The bundle of specification information for your virtual private server (or /instance/ ), including the pricing plan (e.g., @micro_1_0@ ).
cifsBundleId :: Lens' CreateInstancesFromSnapshot Text
cifsBundleId = lens _cifsBundleId (\s a -> s {_cifsBundleId = a})

instance AWSRequest CreateInstancesFromSnapshot where
  type
    Rs CreateInstancesFromSnapshot =
      CreateInstancesFromSnapshotResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          CreateInstancesFromSnapshotResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateInstancesFromSnapshot

instance NFData CreateInstancesFromSnapshot

instance ToHeaders CreateInstancesFromSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.CreateInstancesFromSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateInstancesFromSnapshot where
  toJSON CreateInstancesFromSnapshot' {..} =
    object
      ( catMaybes
          [ ("ipAddressType" .=) <$> _cifsIpAddressType,
            ("restoreDate" .=) <$> _cifsRestoreDate,
            ("userData" .=) <$> _cifsUserData,
            ("addOns" .=) <$> _cifsAddOns,
            ("attachedDiskMapping" .=)
              <$> _cifsAttachedDiskMapping,
            ("instanceSnapshotName" .=)
              <$> _cifsInstanceSnapshotName,
            ("keyPairName" .=) <$> _cifsKeyPairName,
            ("useLatestRestorableAutoSnapshot" .=)
              <$> _cifsUseLatestRestorableAutoSnapshot,
            ("tags" .=) <$> _cifsTags,
            ("sourceInstanceName" .=)
              <$> _cifsSourceInstanceName,
            Just ("instanceNames" .= _cifsInstanceNames),
            Just ("availabilityZone" .= _cifsAvailabilityZone),
            Just ("bundleId" .= _cifsBundleId)
          ]
      )

instance ToPath CreateInstancesFromSnapshot where
  toPath = const "/"

instance ToQuery CreateInstancesFromSnapshot where
  toQuery = const mempty

-- | /See:/ 'createInstancesFromSnapshotResponse' smart constructor.
data CreateInstancesFromSnapshotResponse = CreateInstancesFromSnapshotResponse'
  { _cifsrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _cifsrrsResponseStatus ::
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

-- | Creates a value of 'CreateInstancesFromSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cifsrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'cifsrrsResponseStatus' - -- | The response status code.
createInstancesFromSnapshotResponse ::
  -- | 'cifsrrsResponseStatus'
  Int ->
  CreateInstancesFromSnapshotResponse
createInstancesFromSnapshotResponse pResponseStatus_ =
  CreateInstancesFromSnapshotResponse'
    { _cifsrrsOperations =
        Nothing,
      _cifsrrsResponseStatus =
        pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
cifsrrsOperations :: Lens' CreateInstancesFromSnapshotResponse [Operation]
cifsrrsOperations = lens _cifsrrsOperations (\s a -> s {_cifsrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
cifsrrsResponseStatus :: Lens' CreateInstancesFromSnapshotResponse Int
cifsrrsResponseStatus = lens _cifsrrsResponseStatus (\s a -> s {_cifsrrsResponseStatus = a})

instance NFData CreateInstancesFromSnapshotResponse
