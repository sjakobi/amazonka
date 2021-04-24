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
-- Module      : Network.AWS.Glue.CreateRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new registry which may be used to hold a collection of schemas.
module Network.AWS.Glue.CreateRegistry
  ( -- * Creating a Request
    createRegistry,
    CreateRegistry,

    -- * Request Lenses
    crTags,
    crDescription,
    crRegistryName,

    -- * Destructuring the Response
    createRegistryResponse,
    CreateRegistryResponse,

    -- * Response Lenses
    crrrsRegistryName,
    crrrsTags,
    crrrsDescription,
    crrrsRegistryARN,
    crrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createRegistry' smart constructor.
data CreateRegistry = CreateRegistry'
  { _crTags ::
      !(Maybe (Map Text Text)),
    _crDescription :: !(Maybe Text),
    _crRegistryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRegistry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crTags' - AWS tags that contain a key value pair and may be searched by console, command line, or API.
--
-- * 'crDescription' - A description of the registry. If description is not provided, there will not be any default value for this.
--
-- * 'crRegistryName' - Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.
createRegistry ::
  -- | 'crRegistryName'
  Text ->
  CreateRegistry
createRegistry pRegistryName_ =
  CreateRegistry'
    { _crTags = Nothing,
      _crDescription = Nothing,
      _crRegistryName = pRegistryName_
    }

-- | AWS tags that contain a key value pair and may be searched by console, command line, or API.
crTags :: Lens' CreateRegistry (HashMap Text Text)
crTags = lens _crTags (\s a -> s {_crTags = a}) . _Default . _Map

-- | A description of the registry. If description is not provided, there will not be any default value for this.
crDescription :: Lens' CreateRegistry (Maybe Text)
crDescription = lens _crDescription (\s a -> s {_crDescription = a})

-- | Name of the registry to be created of max length of 255, and may only contain letters, numbers, hyphen, underscore, dollar sign, or hash mark. No whitespace.
crRegistryName :: Lens' CreateRegistry Text
crRegistryName = lens _crRegistryName (\s a -> s {_crRegistryName = a})

instance AWSRequest CreateRegistry where
  type Rs CreateRegistry = CreateRegistryResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateRegistryResponse'
            <$> (x .?> "RegistryName")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "Description")
            <*> (x .?> "RegistryArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRegistry

instance NFData CreateRegistry

instance ToHeaders CreateRegistry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateRegistry" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRegistry where
  toJSON CreateRegistry' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _crTags,
            ("Description" .=) <$> _crDescription,
            Just ("RegistryName" .= _crRegistryName)
          ]
      )

instance ToPath CreateRegistry where
  toPath = const "/"

instance ToQuery CreateRegistry where
  toQuery = const mempty

-- | /See:/ 'createRegistryResponse' smart constructor.
data CreateRegistryResponse = CreateRegistryResponse'
  { _crrrsRegistryName ::
      !(Maybe Text),
    _crrrsTags ::
      !(Maybe (Map Text Text)),
    _crrrsDescription ::
      !(Maybe Text),
    _crrrsRegistryARN ::
      !(Maybe Text),
    _crrrsResponseStatus ::
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

-- | Creates a value of 'CreateRegistryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrrsRegistryName' - The name of the registry.
--
-- * 'crrrsTags' - The tags for the registry.
--
-- * 'crrrsDescription' - A description of the registry.
--
-- * 'crrrsRegistryARN' - The Amazon Resource Name (ARN) of the newly created registry.
--
-- * 'crrrsResponseStatus' - -- | The response status code.
createRegistryResponse ::
  -- | 'crrrsResponseStatus'
  Int ->
  CreateRegistryResponse
createRegistryResponse pResponseStatus_ =
  CreateRegistryResponse'
    { _crrrsRegistryName =
        Nothing,
      _crrrsTags = Nothing,
      _crrrsDescription = Nothing,
      _crrrsRegistryARN = Nothing,
      _crrrsResponseStatus = pResponseStatus_
    }

-- | The name of the registry.
crrrsRegistryName :: Lens' CreateRegistryResponse (Maybe Text)
crrrsRegistryName = lens _crrrsRegistryName (\s a -> s {_crrrsRegistryName = a})

-- | The tags for the registry.
crrrsTags :: Lens' CreateRegistryResponse (HashMap Text Text)
crrrsTags = lens _crrrsTags (\s a -> s {_crrrsTags = a}) . _Default . _Map

-- | A description of the registry.
crrrsDescription :: Lens' CreateRegistryResponse (Maybe Text)
crrrsDescription = lens _crrrsDescription (\s a -> s {_crrrsDescription = a})

-- | The Amazon Resource Name (ARN) of the newly created registry.
crrrsRegistryARN :: Lens' CreateRegistryResponse (Maybe Text)
crrrsRegistryARN = lens _crrrsRegistryARN (\s a -> s {_crrrsRegistryARN = a})

-- | -- | The response status code.
crrrsResponseStatus :: Lens' CreateRegistryResponse Int
crrrsResponseStatus = lens _crrrsResponseStatus (\s a -> s {_crrrsResponseStatus = a})

instance NFData CreateRegistryResponse
