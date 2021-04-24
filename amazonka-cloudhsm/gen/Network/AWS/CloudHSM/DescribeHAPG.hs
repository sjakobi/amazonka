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
-- Module      : Network.AWS.CloudHSM.DescribeHAPG
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Retrieves information about a high-availability partition group.
module Network.AWS.CloudHSM.DescribeHAPG
  ( -- * Creating a Request
    describeHAPG,
    DescribeHAPG,

    -- * Request Lenses
    dhapgHAPGARN,

    -- * Destructuring the Response
    describeHAPGResponse,
    DescribeHAPGResponse,

    -- * Response Lenses
    dhapgrrsHSMsPendingDeletion,
    dhapgrrsHAPGARN,
    dhapgrrsPartitionSerialList,
    dhapgrrsLastModifiedTimestamp,
    dhapgrrsState,
    dhapgrrsLabel,
    dhapgrrsHAPGSerial,
    dhapgrrsHSMsPendingRegistration,
    dhapgrrsHSMsLastActionFailed,
    dhapgrrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'DescribeHapg' action.
--
--
--
-- /See:/ 'describeHAPG' smart constructor.
newtype DescribeHAPG = DescribeHAPG'
  { _dhapgHAPGARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHAPG' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhapgHAPGARN' - The ARN of the high-availability partition group to describe.
describeHAPG ::
  -- | 'dhapgHAPGARN'
  Text ->
  DescribeHAPG
describeHAPG pHAPGARN_ =
  DescribeHAPG' {_dhapgHAPGARN = pHAPGARN_}

-- | The ARN of the high-availability partition group to describe.
dhapgHAPGARN :: Lens' DescribeHAPG Text
dhapgHAPGARN = lens _dhapgHAPGARN (\s a -> s {_dhapgHAPGARN = a})

instance AWSRequest DescribeHAPG where
  type Rs DescribeHAPG = DescribeHAPGResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          DescribeHAPGResponse'
            <$> (x .?> "HsmsPendingDeletion" .!@ mempty)
            <*> (x .?> "HapgArn")
            <*> (x .?> "PartitionSerialList" .!@ mempty)
            <*> (x .?> "LastModifiedTimestamp")
            <*> (x .?> "State")
            <*> (x .?> "Label")
            <*> (x .?> "HapgSerial")
            <*> (x .?> "HsmsPendingRegistration" .!@ mempty)
            <*> (x .?> "HsmsLastActionFailed" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHAPG

instance NFData DescribeHAPG

instance ToHeaders DescribeHAPG where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CloudHsmFrontendService.DescribeHapg" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeHAPG where
  toJSON DescribeHAPG' {..} =
    object
      (catMaybes [Just ("HapgArn" .= _dhapgHAPGARN)])

instance ToPath DescribeHAPG where
  toPath = const "/"

instance ToQuery DescribeHAPG where
  toQuery = const mempty

-- | Contains the output of the 'DescribeHapg' action.
--
--
--
-- /See:/ 'describeHAPGResponse' smart constructor.
data DescribeHAPGResponse = DescribeHAPGResponse'
  { _dhapgrrsHSMsPendingDeletion ::
      !(Maybe [Text]),
    _dhapgrrsHAPGARN ::
      !(Maybe Text),
    _dhapgrrsPartitionSerialList ::
      !(Maybe [Text]),
    _dhapgrrsLastModifiedTimestamp ::
      !(Maybe Text),
    _dhapgrrsState ::
      !(Maybe CloudHSMObjectState),
    _dhapgrrsLabel ::
      !(Maybe Text),
    _dhapgrrsHAPGSerial ::
      !(Maybe Text),
    _dhapgrrsHSMsPendingRegistration ::
      !(Maybe [Text]),
    _dhapgrrsHSMsLastActionFailed ::
      !(Maybe [Text]),
    _dhapgrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHAPGResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhapgrrsHSMsPendingDeletion' -
--
-- * 'dhapgrrsHAPGARN' - The ARN of the high-availability partition group.
--
-- * 'dhapgrrsPartitionSerialList' - The list of partition serial numbers that belong to the high-availability partition group.
--
-- * 'dhapgrrsLastModifiedTimestamp' - The date and time the high-availability partition group was last modified.
--
-- * 'dhapgrrsState' - The state of the high-availability partition group.
--
-- * 'dhapgrrsLabel' - The label for the high-availability partition group.
--
-- * 'dhapgrrsHAPGSerial' - The serial number of the high-availability partition group.
--
-- * 'dhapgrrsHSMsPendingRegistration' -
--
-- * 'dhapgrrsHSMsLastActionFailed' -
--
-- * 'dhapgrrsResponseStatus' - -- | The response status code.
describeHAPGResponse ::
  -- | 'dhapgrrsResponseStatus'
  Int ->
  DescribeHAPGResponse
describeHAPGResponse pResponseStatus_ =
  DescribeHAPGResponse'
    { _dhapgrrsHSMsPendingDeletion =
        Nothing,
      _dhapgrrsHAPGARN = Nothing,
      _dhapgrrsPartitionSerialList = Nothing,
      _dhapgrrsLastModifiedTimestamp = Nothing,
      _dhapgrrsState = Nothing,
      _dhapgrrsLabel = Nothing,
      _dhapgrrsHAPGSerial = Nothing,
      _dhapgrrsHSMsPendingRegistration = Nothing,
      _dhapgrrsHSMsLastActionFailed = Nothing,
      _dhapgrrsResponseStatus = pResponseStatus_
    }

-- |
dhapgrrsHSMsPendingDeletion :: Lens' DescribeHAPGResponse [Text]
dhapgrrsHSMsPendingDeletion = lens _dhapgrrsHSMsPendingDeletion (\s a -> s {_dhapgrrsHSMsPendingDeletion = a}) . _Default . _Coerce

-- | The ARN of the high-availability partition group.
dhapgrrsHAPGARN :: Lens' DescribeHAPGResponse (Maybe Text)
dhapgrrsHAPGARN = lens _dhapgrrsHAPGARN (\s a -> s {_dhapgrrsHAPGARN = a})

-- | The list of partition serial numbers that belong to the high-availability partition group.
dhapgrrsPartitionSerialList :: Lens' DescribeHAPGResponse [Text]
dhapgrrsPartitionSerialList = lens _dhapgrrsPartitionSerialList (\s a -> s {_dhapgrrsPartitionSerialList = a}) . _Default . _Coerce

-- | The date and time the high-availability partition group was last modified.
dhapgrrsLastModifiedTimestamp :: Lens' DescribeHAPGResponse (Maybe Text)
dhapgrrsLastModifiedTimestamp = lens _dhapgrrsLastModifiedTimestamp (\s a -> s {_dhapgrrsLastModifiedTimestamp = a})

-- | The state of the high-availability partition group.
dhapgrrsState :: Lens' DescribeHAPGResponse (Maybe CloudHSMObjectState)
dhapgrrsState = lens _dhapgrrsState (\s a -> s {_dhapgrrsState = a})

-- | The label for the high-availability partition group.
dhapgrrsLabel :: Lens' DescribeHAPGResponse (Maybe Text)
dhapgrrsLabel = lens _dhapgrrsLabel (\s a -> s {_dhapgrrsLabel = a})

-- | The serial number of the high-availability partition group.
dhapgrrsHAPGSerial :: Lens' DescribeHAPGResponse (Maybe Text)
dhapgrrsHAPGSerial = lens _dhapgrrsHAPGSerial (\s a -> s {_dhapgrrsHAPGSerial = a})

-- |
dhapgrrsHSMsPendingRegistration :: Lens' DescribeHAPGResponse [Text]
dhapgrrsHSMsPendingRegistration = lens _dhapgrrsHSMsPendingRegistration (\s a -> s {_dhapgrrsHSMsPendingRegistration = a}) . _Default . _Coerce

-- |
dhapgrrsHSMsLastActionFailed :: Lens' DescribeHAPGResponse [Text]
dhapgrrsHSMsLastActionFailed = lens _dhapgrrsHSMsLastActionFailed (\s a -> s {_dhapgrrsHSMsLastActionFailed = a}) . _Default . _Coerce

-- | -- | The response status code.
dhapgrrsResponseStatus :: Lens' DescribeHAPGResponse Int
dhapgrrsResponseStatus = lens _dhapgrrsResponseStatus (\s a -> s {_dhapgrrsResponseStatus = a})

instance NFData DescribeHAPGResponse
