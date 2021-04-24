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
-- Module      : Network.AWS.Snowball.CreateAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an address for a Snow device to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.
module Network.AWS.Snowball.CreateAddress
  ( -- * Creating a Request
    createAddress,
    CreateAddress,

    -- * Request Lenses
    caAddress,

    -- * Destructuring the Response
    createAddressResponse,
    CreateAddressResponse,

    -- * Response Lenses
    carrsAddressId,
    carrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'createAddress' smart constructor.
newtype CreateAddress = CreateAddress'
  { _caAddress ::
      Address
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAddress' - The address that you want the Snow device shipped to.
createAddress ::
  -- | 'caAddress'
  Address ->
  CreateAddress
createAddress pAddress_ =
  CreateAddress' {_caAddress = pAddress_}

-- | The address that you want the Snow device shipped to.
caAddress :: Lens' CreateAddress Address
caAddress = lens _caAddress (\s a -> s {_caAddress = a})

instance AWSRequest CreateAddress where
  type Rs CreateAddress = CreateAddressResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          CreateAddressResponse'
            <$> (x .?> "AddressId") <*> (pure (fromEnum s))
      )

instance Hashable CreateAddress

instance NFData CreateAddress

instance ToHeaders CreateAddress where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.CreateAddress" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAddress where
  toJSON CreateAddress' {..} =
    object (catMaybes [Just ("Address" .= _caAddress)])

instance ToPath CreateAddress where
  toPath = const "/"

instance ToQuery CreateAddress where
  toQuery = const mempty

-- | /See:/ 'createAddressResponse' smart constructor.
data CreateAddressResponse = CreateAddressResponse'
  { _carrsAddressId ::
      !(Maybe Text),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CreateAddressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsAddressId' - The automatically generated ID for a specific address. You'll use this ID when you create a job to specify which address you want the Snow device for that job shipped to.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createAddressResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateAddressResponse
createAddressResponse pResponseStatus_ =
  CreateAddressResponse'
    { _carrsAddressId = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | The automatically generated ID for a specific address. You'll use this ID when you create a job to specify which address you want the Snow device for that job shipped to.
carrsAddressId :: Lens' CreateAddressResponse (Maybe Text)
carrsAddressId = lens _carrsAddressId (\s a -> s {_carrsAddressId = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateAddressResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateAddressResponse
