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
-- Module      : Network.AWS.DirectoryService.DescribeConditionalForwarders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about the conditional forwarders for this account.
--
--
-- If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.
module Network.AWS.DirectoryService.DescribeConditionalForwarders
  ( -- * Creating a Request
    describeConditionalForwarders,
    DescribeConditionalForwarders,

    -- * Request Lenses
    dcfsRemoteDomainNames,
    dcfsDirectoryId,

    -- * Destructuring the Response
    describeConditionalForwardersResponse,
    DescribeConditionalForwardersResponse,

    -- * Response Lenses
    dcfrcrsConditionalForwarders,
    dcfrcrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Describes a conditional forwarder.
--
--
--
-- /See:/ 'describeConditionalForwarders' smart constructor.
data DescribeConditionalForwarders = DescribeConditionalForwarders'
  { _dcfsRemoteDomainNames ::
      !( Maybe
           [Text]
       ),
    _dcfsDirectoryId ::
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

-- | Creates a value of 'DescribeConditionalForwarders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfsRemoteDomainNames' - The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.
--
-- * 'dcfsDirectoryId' - The directory ID for which to get the list of associated conditional forwarders.
describeConditionalForwarders ::
  -- | 'dcfsDirectoryId'
  Text ->
  DescribeConditionalForwarders
describeConditionalForwarders pDirectoryId_ =
  DescribeConditionalForwarders'
    { _dcfsRemoteDomainNames =
        Nothing,
      _dcfsDirectoryId = pDirectoryId_
    }

-- | The fully qualified domain names (FQDN) of the remote domains for which to get the list of associated conditional forwarders. If this member is null, all conditional forwarders are returned.
dcfsRemoteDomainNames :: Lens' DescribeConditionalForwarders [Text]
dcfsRemoteDomainNames = lens _dcfsRemoteDomainNames (\s a -> s {_dcfsRemoteDomainNames = a}) . _Default . _Coerce

-- | The directory ID for which to get the list of associated conditional forwarders.
dcfsDirectoryId :: Lens' DescribeConditionalForwarders Text
dcfsDirectoryId = lens _dcfsDirectoryId (\s a -> s {_dcfsDirectoryId = a})

instance AWSRequest DescribeConditionalForwarders where
  type
    Rs DescribeConditionalForwarders =
      DescribeConditionalForwardersResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeConditionalForwardersResponse'
            <$> (x .?> "ConditionalForwarders" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeConditionalForwarders

instance NFData DescribeConditionalForwarders

instance ToHeaders DescribeConditionalForwarders where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeConditionalForwarders" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeConditionalForwarders where
  toJSON DescribeConditionalForwarders' {..} =
    object
      ( catMaybes
          [ ("RemoteDomainNames" .=) <$> _dcfsRemoteDomainNames,
            Just ("DirectoryId" .= _dcfsDirectoryId)
          ]
      )

instance ToPath DescribeConditionalForwarders where
  toPath = const "/"

instance ToQuery DescribeConditionalForwarders where
  toQuery = const mempty

-- | The result of a DescribeConditionalForwarder request.
--
--
--
-- /See:/ 'describeConditionalForwardersResponse' smart constructor.
data DescribeConditionalForwardersResponse = DescribeConditionalForwardersResponse'
  { _dcfrcrsConditionalForwarders ::
      !( Maybe
           [ConditionalForwarder]
       ),
    _dcfrcrsResponseStatus ::
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

-- | Creates a value of 'DescribeConditionalForwardersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfrcrsConditionalForwarders' - The list of conditional forwarders that have been created.
--
-- * 'dcfrcrsResponseStatus' - -- | The response status code.
describeConditionalForwardersResponse ::
  -- | 'dcfrcrsResponseStatus'
  Int ->
  DescribeConditionalForwardersResponse
describeConditionalForwardersResponse
  pResponseStatus_ =
    DescribeConditionalForwardersResponse'
      { _dcfrcrsConditionalForwarders =
          Nothing,
        _dcfrcrsResponseStatus =
          pResponseStatus_
      }

-- | The list of conditional forwarders that have been created.
dcfrcrsConditionalForwarders :: Lens' DescribeConditionalForwardersResponse [ConditionalForwarder]
dcfrcrsConditionalForwarders = lens _dcfrcrsConditionalForwarders (\s a -> s {_dcfrcrsConditionalForwarders = a}) . _Default . _Coerce

-- | -- | The response status code.
dcfrcrsResponseStatus :: Lens' DescribeConditionalForwardersResponse Int
dcfrcrsResponseStatus = lens _dcfrcrsResponseStatus (\s a -> s {_dcfrcrsResponseStatus = a})

instance NFData DescribeConditionalForwardersResponse
