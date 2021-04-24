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
-- Module      : Network.AWS.Lightsail.CreateDisk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a block storage disk that can be attached to an Amazon Lightsail instance in the same Availability Zone (e.g., @us-east-2a@ ).
--
--
-- The @create disk@ operation supports tag-based access control via request tags. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateDisk
  ( -- * Creating a Request
    createDisk,
    CreateDisk,

    -- * Request Lenses
    creAddOns,
    creTags,
    creDiskName,
    creAvailabilityZone,
    creSizeInGb,

    -- * Destructuring the Response
    createDiskResponse,
    CreateDiskResponse,

    -- * Response Lenses
    crersOperations,
    crersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDisk' smart constructor.
data CreateDisk = CreateDisk'
  { _creAddOns ::
      !(Maybe [AddOnRequest]),
    _creTags :: !(Maybe [Tag]),
    _creDiskName :: !Text,
    _creAvailabilityZone :: !Text,
    _creSizeInGb :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creAddOns' - An array of objects that represent the add-ons to enable for the new disk.
--
-- * 'creTags' - The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
--
-- * 'creDiskName' - The unique Lightsail disk name (e.g., @my-disk@ ).
--
-- * 'creAvailabilityZone' - The Availability Zone where you want to create the disk (e.g., @us-east-2a@ ). Use the same Availability Zone as the Lightsail instance to which you want to attach the disk. Use the @get regions@ operation to list the Availability Zones where Lightsail is currently available.
--
-- * 'creSizeInGb' - The size of the disk in GB (e.g., @32@ ).
createDisk ::
  -- | 'creDiskName'
  Text ->
  -- | 'creAvailabilityZone'
  Text ->
  -- | 'creSizeInGb'
  Int ->
  CreateDisk
createDisk pDiskName_ pAvailabilityZone_ pSizeInGb_ =
  CreateDisk'
    { _creAddOns = Nothing,
      _creTags = Nothing,
      _creDiskName = pDiskName_,
      _creAvailabilityZone = pAvailabilityZone_,
      _creSizeInGb = pSizeInGb_
    }

-- | An array of objects that represent the add-ons to enable for the new disk.
creAddOns :: Lens' CreateDisk [AddOnRequest]
creAddOns = lens _creAddOns (\s a -> s {_creAddOns = a}) . _Default . _Coerce

-- | The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
creTags :: Lens' CreateDisk [Tag]
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Coerce

-- | The unique Lightsail disk name (e.g., @my-disk@ ).
creDiskName :: Lens' CreateDisk Text
creDiskName = lens _creDiskName (\s a -> s {_creDiskName = a})

-- | The Availability Zone where you want to create the disk (e.g., @us-east-2a@ ). Use the same Availability Zone as the Lightsail instance to which you want to attach the disk. Use the @get regions@ operation to list the Availability Zones where Lightsail is currently available.
creAvailabilityZone :: Lens' CreateDisk Text
creAvailabilityZone = lens _creAvailabilityZone (\s a -> s {_creAvailabilityZone = a})

-- | The size of the disk in GB (e.g., @32@ ).
creSizeInGb :: Lens' CreateDisk Int
creSizeInGb = lens _creSizeInGb (\s a -> s {_creSizeInGb = a})

instance AWSRequest CreateDisk where
  type Rs CreateDisk = CreateDiskResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          CreateDiskResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDisk

instance NFData CreateDisk

instance ToHeaders CreateDisk where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.CreateDisk" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDisk where
  toJSON CreateDisk' {..} =
    object
      ( catMaybes
          [ ("addOns" .=) <$> _creAddOns,
            ("tags" .=) <$> _creTags,
            Just ("diskName" .= _creDiskName),
            Just ("availabilityZone" .= _creAvailabilityZone),
            Just ("sizeInGb" .= _creSizeInGb)
          ]
      )

instance ToPath CreateDisk where
  toPath = const "/"

instance ToQuery CreateDisk where
  toQuery = const mempty

-- | /See:/ 'createDiskResponse' smart constructor.
data CreateDiskResponse = CreateDiskResponse'
  { _crersOperations ::
      !(Maybe [Operation]),
    _crersResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDiskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crersOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'crersResponseStatus' - -- | The response status code.
createDiskResponse ::
  -- | 'crersResponseStatus'
  Int ->
  CreateDiskResponse
createDiskResponse pResponseStatus_ =
  CreateDiskResponse'
    { _crersOperations = Nothing,
      _crersResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
crersOperations :: Lens' CreateDiskResponse [Operation]
crersOperations = lens _crersOperations (\s a -> s {_crersOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
crersResponseStatus :: Lens' CreateDiskResponse Int
crersResponseStatus = lens _crersResponseStatus (\s a -> s {_crersResponseStatus = a})

instance NFData CreateDiskResponse
