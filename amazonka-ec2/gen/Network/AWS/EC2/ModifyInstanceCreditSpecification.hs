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
-- Module      : Network.AWS.EC2.ModifyInstanceCreditSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the credit option for CPU usage on a running or stopped burstable performance instance. The credit options are @standard@ and @unlimited@ .
--
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html Burstable performance instances> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.ModifyInstanceCreditSpecification
  ( -- * Creating a Request
    modifyInstanceCreditSpecification,
    ModifyInstanceCreditSpecification,

    -- * Request Lenses
    micsDryRun,
    micsClientToken,
    micsInstanceCreditSpecifications,

    -- * Destructuring the Response
    modifyInstanceCreditSpecificationResponse,
    ModifyInstanceCreditSpecificationResponse,

    -- * Response Lenses
    micsrrsSuccessfulInstanceCreditSpecifications,
    micsrrsUnsuccessfulInstanceCreditSpecifications,
    micsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyInstanceCreditSpecification' smart constructor.
data ModifyInstanceCreditSpecification = ModifyInstanceCreditSpecification'
  { _micsDryRun ::
      !( Maybe
           Bool
       ),
    _micsClientToken ::
      !( Maybe
           Text
       ),
    _micsInstanceCreditSpecifications ::
      ![InstanceCreditSpecificationRequest]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyInstanceCreditSpecification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'micsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'micsClientToken' - A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- * 'micsInstanceCreditSpecifications' - Information about the credit option for CPU usage.
modifyInstanceCreditSpecification ::
  ModifyInstanceCreditSpecification
modifyInstanceCreditSpecification =
  ModifyInstanceCreditSpecification'
    { _micsDryRun =
        Nothing,
      _micsClientToken = Nothing,
      _micsInstanceCreditSpecifications =
        mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
micsDryRun :: Lens' ModifyInstanceCreditSpecification (Maybe Bool)
micsDryRun = lens _micsDryRun (\s a -> s {_micsDryRun = a})

-- | A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
micsClientToken :: Lens' ModifyInstanceCreditSpecification (Maybe Text)
micsClientToken = lens _micsClientToken (\s a -> s {_micsClientToken = a})

-- | Information about the credit option for CPU usage.
micsInstanceCreditSpecifications :: Lens' ModifyInstanceCreditSpecification [InstanceCreditSpecificationRequest]
micsInstanceCreditSpecifications = lens _micsInstanceCreditSpecifications (\s a -> s {_micsInstanceCreditSpecifications = a}) . _Coerce

instance AWSRequest ModifyInstanceCreditSpecification where
  type
    Rs ModifyInstanceCreditSpecification =
      ModifyInstanceCreditSpecificationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyInstanceCreditSpecificationResponse'
            <$> ( x .@? "successfulInstanceCreditSpecificationSet"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> ( x .@? "unsuccessfulInstanceCreditSpecificationSet"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyInstanceCreditSpecification

instance NFData ModifyInstanceCreditSpecification

instance ToHeaders ModifyInstanceCreditSpecification where
  toHeaders = const mempty

instance ToPath ModifyInstanceCreditSpecification where
  toPath = const "/"

instance ToQuery ModifyInstanceCreditSpecification where
  toQuery ModifyInstanceCreditSpecification' {..} =
    mconcat
      [ "Action"
          =: ("ModifyInstanceCreditSpecification" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _micsDryRun,
        "ClientToken" =: _micsClientToken,
        toQueryList
          "InstanceCreditSpecification"
          _micsInstanceCreditSpecifications
      ]

-- | /See:/ 'modifyInstanceCreditSpecificationResponse' smart constructor.
data ModifyInstanceCreditSpecificationResponse = ModifyInstanceCreditSpecificationResponse'
  { _micsrrsSuccessfulInstanceCreditSpecifications ::
      !( Maybe
           [SuccessfulInstanceCreditSpecificationItem]
       ),
    _micsrrsUnsuccessfulInstanceCreditSpecifications ::
      !( Maybe
           [UnsuccessfulInstanceCreditSpecificationItem]
       ),
    _micsrrsResponseStatus ::
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

-- | Creates a value of 'ModifyInstanceCreditSpecificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'micsrrsSuccessfulInstanceCreditSpecifications' - Information about the instances whose credit option for CPU usage was successfully modified.
--
-- * 'micsrrsUnsuccessfulInstanceCreditSpecifications' - Information about the instances whose credit option for CPU usage was not modified.
--
-- * 'micsrrsResponseStatus' - -- | The response status code.
modifyInstanceCreditSpecificationResponse ::
  -- | 'micsrrsResponseStatus'
  Int ->
  ModifyInstanceCreditSpecificationResponse
modifyInstanceCreditSpecificationResponse
  pResponseStatus_ =
    ModifyInstanceCreditSpecificationResponse'
      { _micsrrsSuccessfulInstanceCreditSpecifications =
          Nothing,
        _micsrrsUnsuccessfulInstanceCreditSpecifications =
          Nothing,
        _micsrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the instances whose credit option for CPU usage was successfully modified.
micsrrsSuccessfulInstanceCreditSpecifications :: Lens' ModifyInstanceCreditSpecificationResponse [SuccessfulInstanceCreditSpecificationItem]
micsrrsSuccessfulInstanceCreditSpecifications = lens _micsrrsSuccessfulInstanceCreditSpecifications (\s a -> s {_micsrrsSuccessfulInstanceCreditSpecifications = a}) . _Default . _Coerce

-- | Information about the instances whose credit option for CPU usage was not modified.
micsrrsUnsuccessfulInstanceCreditSpecifications :: Lens' ModifyInstanceCreditSpecificationResponse [UnsuccessfulInstanceCreditSpecificationItem]
micsrrsUnsuccessfulInstanceCreditSpecifications = lens _micsrrsUnsuccessfulInstanceCreditSpecifications (\s a -> s {_micsrrsUnsuccessfulInstanceCreditSpecifications = a}) . _Default . _Coerce

-- | -- | The response status code.
micsrrsResponseStatus :: Lens' ModifyInstanceCreditSpecificationResponse Int
micsrrsResponseStatus = lens _micsrrsResponseStatus (\s a -> s {_micsrrsResponseStatus = a})

instance
  NFData
    ModifyInstanceCreditSpecificationResponse
