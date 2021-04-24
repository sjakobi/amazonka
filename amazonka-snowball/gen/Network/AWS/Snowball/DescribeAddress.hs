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
-- Module      : Network.AWS.Snowball.DescribeAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Takes an @AddressId@ and returns specific details about that address in the form of an @Address@ object.
module Network.AWS.Snowball.DescribeAddress
  ( -- * Creating a Request
    describeAddress,
    DescribeAddress,

    -- * Request Lenses
    daAddressId,

    -- * Destructuring the Response
    describeAddressResponse,
    DescribeAddressResponse,

    -- * Response Lenses
    darrsAddress,
    darrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'describeAddress' smart constructor.
newtype DescribeAddress = DescribeAddress'
  { _daAddressId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daAddressId' - The automatically generated ID for a specific address.
describeAddress ::
  -- | 'daAddressId'
  Text ->
  DescribeAddress
describeAddress pAddressId_ =
  DescribeAddress' {_daAddressId = pAddressId_}

-- | The automatically generated ID for a specific address.
daAddressId :: Lens' DescribeAddress Text
daAddressId = lens _daAddressId (\s a -> s {_daAddressId = a})

instance AWSRequest DescribeAddress where
  type Rs DescribeAddress = DescribeAddressResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          DescribeAddressResponse'
            <$> (x .?> "Address") <*> (pure (fromEnum s))
      )

instance Hashable DescribeAddress

instance NFData DescribeAddress

instance ToHeaders DescribeAddress where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.DescribeAddress" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAddress where
  toJSON DescribeAddress' {..} =
    object
      (catMaybes [Just ("AddressId" .= _daAddressId)])

instance ToPath DescribeAddress where
  toPath = const "/"

instance ToQuery DescribeAddress where
  toQuery = const mempty

-- | /See:/ 'describeAddressResponse' smart constructor.
data DescribeAddressResponse = DescribeAddressResponse'
  { _darrsAddress ::
      !(Maybe Address),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DescribeAddressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsAddress' - The address that you want the Snow device(s) associated with a specific job to be shipped to.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeAddressResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeAddressResponse
describeAddressResponse pResponseStatus_ =
  DescribeAddressResponse'
    { _darrsAddress = Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The address that you want the Snow device(s) associated with a specific job to be shipped to.
darrsAddress :: Lens' DescribeAddressResponse (Maybe Address)
darrsAddress = lens _darrsAddress (\s a -> s {_darrsAddress = a})

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeAddressResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeAddressResponse
