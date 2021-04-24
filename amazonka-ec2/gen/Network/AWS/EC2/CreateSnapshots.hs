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
-- Module      : Network.AWS.EC2.CreateSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates crash-consistent snapshots of multiple EBS volumes and stores the data in S3. Volumes are chosen by specifying an instance. Any attached volumes will produce one snapshot each that is crash-consistent across the instance. Boot volumes can be excluded by changing the parameters.
--
--
-- You can create multi-volume snapshots of instances in a Region and instances on an Outpost. If you create snapshots from an instance in a Region, the snapshots must be stored in the same Region as the instance. If you create snapshots from an instance on an Outpost, the snapshots can be stored on the same Outpost as the instance, or in the Region for that Outpost.
module Network.AWS.EC2.CreateSnapshots
  ( -- * Creating a Request
    createSnapshots,
    CreateSnapshots,

    -- * Request Lenses
    cssTagSpecifications,
    cssDryRun,
    cssOutpostARN,
    cssCopyTagsFromSource,
    cssDescription,
    cssInstanceSpecification,

    -- * Destructuring the Response
    createSnapshotsResponse,
    CreateSnapshotsResponse,

    -- * Response Lenses
    csrsrsSnapshots,
    csrsrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSnapshots' smart constructor.
data CreateSnapshots = CreateSnapshots'
  { _cssTagSpecifications ::
      !(Maybe [TagSpecification]),
    _cssDryRun :: !(Maybe Bool),
    _cssOutpostARN :: !(Maybe Text),
    _cssCopyTagsFromSource ::
      !(Maybe CopyTagsFromSource),
    _cssDescription :: !(Maybe Text),
    _cssInstanceSpecification ::
      !InstanceSpecification
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSnapshots' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssTagSpecifications' - Tags to apply to every snapshot specified by the instance.
--
-- * 'cssDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cssOutpostARN' - The Amazon Resource Name (ARN) of the AWS Outpost on which to create the local snapshots.     * To create snapshots from an instance in a Region, omit this parameter. The snapshots are created in the same Region as the instance.     * To create snapshots from an instance on an Outpost and store the snapshots in the Region, omit this parameter. The snapshots are created in the Region for the Outpost.     * To create snapshots from an instance on an Outpost and store the snapshots on an Outpost, specify the ARN of the destination Outpost. The snapshots must be created on the same Outpost as the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-multivol-snapshot Creating multi-volume local snapshots from instances on an Outpost> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- * 'cssCopyTagsFromSource' - Copies the tags from the specified volume to corresponding snapshot.
--
-- * 'cssDescription' - A description propagated to every snapshot specified by the instance.
--
-- * 'cssInstanceSpecification' - The instance to specify which volumes should be included in the snapshots.
createSnapshots ::
  -- | 'cssInstanceSpecification'
  InstanceSpecification ->
  CreateSnapshots
createSnapshots pInstanceSpecification_ =
  CreateSnapshots'
    { _cssTagSpecifications = Nothing,
      _cssDryRun = Nothing,
      _cssOutpostARN = Nothing,
      _cssCopyTagsFromSource = Nothing,
      _cssDescription = Nothing,
      _cssInstanceSpecification = pInstanceSpecification_
    }

-- | Tags to apply to every snapshot specified by the instance.
cssTagSpecifications :: Lens' CreateSnapshots [TagSpecification]
cssTagSpecifications = lens _cssTagSpecifications (\s a -> s {_cssTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cssDryRun :: Lens' CreateSnapshots (Maybe Bool)
cssDryRun = lens _cssDryRun (\s a -> s {_cssDryRun = a})

-- | The Amazon Resource Name (ARN) of the AWS Outpost on which to create the local snapshots.     * To create snapshots from an instance in a Region, omit this parameter. The snapshots are created in the same Region as the instance.     * To create snapshots from an instance on an Outpost and store the snapshots in the Region, omit this parameter. The snapshots are created in the Region for the Outpost.     * To create snapshots from an instance on an Outpost and store the snapshots on an Outpost, specify the ARN of the destination Outpost. The snapshots must be created on the same Outpost as the instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#create-multivol-snapshot Creating multi-volume local snapshots from instances on an Outpost> in the /Amazon Elastic Compute Cloud User Guide/ .
cssOutpostARN :: Lens' CreateSnapshots (Maybe Text)
cssOutpostARN = lens _cssOutpostARN (\s a -> s {_cssOutpostARN = a})

-- | Copies the tags from the specified volume to corresponding snapshot.
cssCopyTagsFromSource :: Lens' CreateSnapshots (Maybe CopyTagsFromSource)
cssCopyTagsFromSource = lens _cssCopyTagsFromSource (\s a -> s {_cssCopyTagsFromSource = a})

-- | A description propagated to every snapshot specified by the instance.
cssDescription :: Lens' CreateSnapshots (Maybe Text)
cssDescription = lens _cssDescription (\s a -> s {_cssDescription = a})

-- | The instance to specify which volumes should be included in the snapshots.
cssInstanceSpecification :: Lens' CreateSnapshots InstanceSpecification
cssInstanceSpecification = lens _cssInstanceSpecification (\s a -> s {_cssInstanceSpecification = a})

instance AWSRequest CreateSnapshots where
  type Rs CreateSnapshots = CreateSnapshotsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateSnapshotsResponse'
            <$> ( x .@? "snapshotSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSnapshots

instance NFData CreateSnapshots

instance ToHeaders CreateSnapshots where
  toHeaders = const mempty

instance ToPath CreateSnapshots where
  toPath = const "/"

instance ToQuery CreateSnapshots where
  toQuery CreateSnapshots' {..} =
    mconcat
      [ "Action" =: ("CreateSnapshots" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cssTagSpecifications
          ),
        "DryRun" =: _cssDryRun,
        "OutpostArn" =: _cssOutpostARN,
        "CopyTagsFromSource" =: _cssCopyTagsFromSource,
        "Description" =: _cssDescription,
        "InstanceSpecification" =: _cssInstanceSpecification
      ]

-- | /See:/ 'createSnapshotsResponse' smart constructor.
data CreateSnapshotsResponse = CreateSnapshotsResponse'
  { _csrsrsSnapshots ::
      !(Maybe [SnapshotInfo]),
    _csrsrsResponseStatus ::
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

-- | Creates a value of 'CreateSnapshotsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrsrsSnapshots' - List of snapshots.
--
-- * 'csrsrsResponseStatus' - -- | The response status code.
createSnapshotsResponse ::
  -- | 'csrsrsResponseStatus'
  Int ->
  CreateSnapshotsResponse
createSnapshotsResponse pResponseStatus_ =
  CreateSnapshotsResponse'
    { _csrsrsSnapshots =
        Nothing,
      _csrsrsResponseStatus = pResponseStatus_
    }

-- | List of snapshots.
csrsrsSnapshots :: Lens' CreateSnapshotsResponse [SnapshotInfo]
csrsrsSnapshots = lens _csrsrsSnapshots (\s a -> s {_csrsrsSnapshots = a}) . _Default . _Coerce

-- | -- | The response status code.
csrsrsResponseStatus :: Lens' CreateSnapshotsResponse Int
csrsrsResponseStatus = lens _csrsrsResponseStatus (\s a -> s {_csrsrsResponseStatus = a})

instance NFData CreateSnapshotsResponse
