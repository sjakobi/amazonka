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
-- Module      : Network.AWS.Route53Domains.GetOperationDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns the current status of an operation that is not completed.
module Network.AWS.Route53Domains.GetOperationDetail
  ( -- * Creating a Request
    getOperationDetail,
    GetOperationDetail,

    -- * Request Lenses
    godOperationId,

    -- * Destructuring the Response
    getOperationDetailResponse,
    GetOperationDetailResponse,

    -- * Response Lenses
    godrrsStatus,
    godrrsMessage,
    godrrsOperationId,
    godrrsSubmittedDate,
    godrrsDomainName,
    godrrsType,
    godrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> request includes the following element.
--
--
--
-- /See:/ 'getOperationDetail' smart constructor.
newtype GetOperationDetail = GetOperationDetail'
  { _godOperationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetOperationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'godOperationId' - The identifier for the operation for which you want to get the status. Route 53 returned the identifier in the response to the original request.
getOperationDetail ::
  -- | 'godOperationId'
  Text ->
  GetOperationDetail
getOperationDetail pOperationId_ =
  GetOperationDetail'
    { _godOperationId =
        pOperationId_
    }

-- | The identifier for the operation for which you want to get the status. Route 53 returned the identifier in the response to the original request.
godOperationId :: Lens' GetOperationDetail Text
godOperationId = lens _godOperationId (\s a -> s {_godOperationId = a})

instance AWSRequest GetOperationDetail where
  type
    Rs GetOperationDetail =
      GetOperationDetailResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          GetOperationDetailResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Message")
            <*> (x .?> "OperationId")
            <*> (x .?> "SubmittedDate")
            <*> (x .?> "DomainName")
            <*> (x .?> "Type")
            <*> (pure (fromEnum s))
      )

instance Hashable GetOperationDetail

instance NFData GetOperationDetail

instance ToHeaders GetOperationDetail where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.GetOperationDetail" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetOperationDetail where
  toJSON GetOperationDetail' {..} =
    object
      (catMaybes [Just ("OperationId" .= _godOperationId)])

instance ToPath GetOperationDetail where
  toPath = const "/"

instance ToQuery GetOperationDetail where
  toQuery = const mempty

-- | The GetOperationDetail response includes the following elements.
--
--
--
-- /See:/ 'getOperationDetailResponse' smart constructor.
data GetOperationDetailResponse = GetOperationDetailResponse'
  { _godrrsStatus ::
      !( Maybe
           OperationStatus
       ),
    _godrrsMessage ::
      !(Maybe Text),
    _godrrsOperationId ::
      !(Maybe Text),
    _godrrsSubmittedDate ::
      !(Maybe POSIX),
    _godrrsDomainName ::
      !(Maybe Text),
    _godrrsType ::
      !( Maybe
           OperationType
       ),
    _godrrsResponseStatus ::
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

-- | Creates a value of 'GetOperationDetailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'godrrsStatus' - The current status of the requested operation in the system.
--
-- * 'godrrsMessage' - Detailed information on the status including possible errors.
--
-- * 'godrrsOperationId' - The identifier for the operation.
--
-- * 'godrrsSubmittedDate' - The date when the request was submitted.
--
-- * 'godrrsDomainName' - The name of a domain.
--
-- * 'godrrsType' - The type of operation that was requested.
--
-- * 'godrrsResponseStatus' - -- | The response status code.
getOperationDetailResponse ::
  -- | 'godrrsResponseStatus'
  Int ->
  GetOperationDetailResponse
getOperationDetailResponse pResponseStatus_ =
  GetOperationDetailResponse'
    { _godrrsStatus =
        Nothing,
      _godrrsMessage = Nothing,
      _godrrsOperationId = Nothing,
      _godrrsSubmittedDate = Nothing,
      _godrrsDomainName = Nothing,
      _godrrsType = Nothing,
      _godrrsResponseStatus = pResponseStatus_
    }

-- | The current status of the requested operation in the system.
godrrsStatus :: Lens' GetOperationDetailResponse (Maybe OperationStatus)
godrrsStatus = lens _godrrsStatus (\s a -> s {_godrrsStatus = a})

-- | Detailed information on the status including possible errors.
godrrsMessage :: Lens' GetOperationDetailResponse (Maybe Text)
godrrsMessage = lens _godrrsMessage (\s a -> s {_godrrsMessage = a})

-- | The identifier for the operation.
godrrsOperationId :: Lens' GetOperationDetailResponse (Maybe Text)
godrrsOperationId = lens _godrrsOperationId (\s a -> s {_godrrsOperationId = a})

-- | The date when the request was submitted.
godrrsSubmittedDate :: Lens' GetOperationDetailResponse (Maybe UTCTime)
godrrsSubmittedDate = lens _godrrsSubmittedDate (\s a -> s {_godrrsSubmittedDate = a}) . mapping _Time

-- | The name of a domain.
godrrsDomainName :: Lens' GetOperationDetailResponse (Maybe Text)
godrrsDomainName = lens _godrrsDomainName (\s a -> s {_godrrsDomainName = a})

-- | The type of operation that was requested.
godrrsType :: Lens' GetOperationDetailResponse (Maybe OperationType)
godrrsType = lens _godrrsType (\s a -> s {_godrrsType = a})

-- | -- | The response status code.
godrrsResponseStatus :: Lens' GetOperationDetailResponse Int
godrrsResponseStatus = lens _godrrsResponseStatus (\s a -> s {_godrrsResponseStatus = a})

instance NFData GetOperationDetailResponse
