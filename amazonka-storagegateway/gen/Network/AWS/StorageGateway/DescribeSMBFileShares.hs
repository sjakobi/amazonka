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
-- Module      : Network.AWS.StorageGateway.DescribeSMBFileShares
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a description for one or more Server Message Block (SMB) file shares from a file gateway. This operation is only supported for file gateways.
module Network.AWS.StorageGateway.DescribeSMBFileShares
  ( -- * Creating a Request
    describeSMBFileShares,
    DescribeSMBFileShares,

    -- * Request Lenses
    dsmbfsFileShareARNList,

    -- * Destructuring the Response
    describeSMBFileSharesResponse,
    DescribeSMBFileSharesResponse,

    -- * Response Lenses
    dsmbfsrrsSMBFileShareInfoList,
    dsmbfsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DescribeSMBFileSharesInput
--
--
--
-- /See:/ 'describeSMBFileShares' smart constructor.
newtype DescribeSMBFileShares = DescribeSMBFileShares'
  { _dsmbfsFileShareARNList ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSMBFileShares' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmbfsFileShareARNList' - An array containing the Amazon Resource Name (ARN) of each file share to be described.
describeSMBFileShares ::
  -- | 'dsmbfsFileShareARNList'
  NonEmpty Text ->
  DescribeSMBFileShares
describeSMBFileShares pFileShareARNList_ =
  DescribeSMBFileShares'
    { _dsmbfsFileShareARNList =
        _List1 # pFileShareARNList_
    }

-- | An array containing the Amazon Resource Name (ARN) of each file share to be described.
dsmbfsFileShareARNList :: Lens' DescribeSMBFileShares (NonEmpty Text)
dsmbfsFileShareARNList = lens _dsmbfsFileShareARNList (\s a -> s {_dsmbfsFileShareARNList = a}) . _List1

instance AWSRequest DescribeSMBFileShares where
  type
    Rs DescribeSMBFileShares =
      DescribeSMBFileSharesResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeSMBFileSharesResponse'
            <$> (x .?> "SMBFileShareInfoList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSMBFileShares

instance NFData DescribeSMBFileShares

instance ToHeaders DescribeSMBFileShares where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeSMBFileShares" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSMBFileShares where
  toJSON DescribeSMBFileShares' {..} =
    object
      ( catMaybes
          [ Just
              ("FileShareARNList" .= _dsmbfsFileShareARNList)
          ]
      )

instance ToPath DescribeSMBFileShares where
  toPath = const "/"

instance ToQuery DescribeSMBFileShares where
  toQuery = const mempty

-- | DescribeSMBFileSharesOutput
--
--
--
-- /See:/ 'describeSMBFileSharesResponse' smart constructor.
data DescribeSMBFileSharesResponse = DescribeSMBFileSharesResponse'
  { _dsmbfsrrsSMBFileShareInfoList ::
      !( Maybe
           [SMBFileShareInfo]
       ),
    _dsmbfsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSMBFileSharesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsmbfsrrsSMBFileShareInfoList' - An array containing a description for each requested file share.
--
-- * 'dsmbfsrrsResponseStatus' - -- | The response status code.
describeSMBFileSharesResponse ::
  -- | 'dsmbfsrrsResponseStatus'
  Int ->
  DescribeSMBFileSharesResponse
describeSMBFileSharesResponse pResponseStatus_ =
  DescribeSMBFileSharesResponse'
    { _dsmbfsrrsSMBFileShareInfoList =
        Nothing,
      _dsmbfsrrsResponseStatus = pResponseStatus_
    }

-- | An array containing a description for each requested file share.
dsmbfsrrsSMBFileShareInfoList :: Lens' DescribeSMBFileSharesResponse [SMBFileShareInfo]
dsmbfsrrsSMBFileShareInfoList = lens _dsmbfsrrsSMBFileShareInfoList (\s a -> s {_dsmbfsrrsSMBFileShareInfoList = a}) . _Default . _Coerce

-- | -- | The response status code.
dsmbfsrrsResponseStatus :: Lens' DescribeSMBFileSharesResponse Int
dsmbfsrrsResponseStatus = lens _dsmbfsrrsResponseStatus (\s a -> s {_dsmbfsrrsResponseStatus = a})

instance NFData DescribeSMBFileSharesResponse
