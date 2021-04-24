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
-- Module      : Network.AWS.IoT.CreateRoleAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a role alias.
module Network.AWS.IoT.CreateRoleAlias
  ( -- * Creating a Request
    createRoleAlias,
    CreateRoleAlias,

    -- * Request Lenses
    craTags,
    craCredentialDurationSeconds,
    craRoleAlias,
    craRoleARN,

    -- * Destructuring the Response
    createRoleAliasResponse,
    CreateRoleAliasResponse,

    -- * Response Lenses
    crarrsRoleAliasARN,
    crarrsRoleAlias,
    crarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createRoleAlias' smart constructor.
data CreateRoleAlias = CreateRoleAlias'
  { _craTags ::
      !(Maybe [Tag]),
    _craCredentialDurationSeconds ::
      !(Maybe Nat),
    _craRoleAlias :: !Text,
    _craRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateRoleAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'craTags' - Metadata which can be used to manage the role alias.
--
-- * 'craCredentialDurationSeconds' - How long (in seconds) the credentials will be valid.
--
-- * 'craRoleAlias' - The role alias that points to a role ARN. This allows you to change the role without having to update the device.
--
-- * 'craRoleARN' - The role ARN.
createRoleAlias ::
  -- | 'craRoleAlias'
  Text ->
  -- | 'craRoleARN'
  Text ->
  CreateRoleAlias
createRoleAlias pRoleAlias_ pRoleARN_ =
  CreateRoleAlias'
    { _craTags = Nothing,
      _craCredentialDurationSeconds = Nothing,
      _craRoleAlias = pRoleAlias_,
      _craRoleARN = pRoleARN_
    }

-- | Metadata which can be used to manage the role alias.
craTags :: Lens' CreateRoleAlias [Tag]
craTags = lens _craTags (\s a -> s {_craTags = a}) . _Default . _Coerce

-- | How long (in seconds) the credentials will be valid.
craCredentialDurationSeconds :: Lens' CreateRoleAlias (Maybe Natural)
craCredentialDurationSeconds = lens _craCredentialDurationSeconds (\s a -> s {_craCredentialDurationSeconds = a}) . mapping _Nat

-- | The role alias that points to a role ARN. This allows you to change the role without having to update the device.
craRoleAlias :: Lens' CreateRoleAlias Text
craRoleAlias = lens _craRoleAlias (\s a -> s {_craRoleAlias = a})

-- | The role ARN.
craRoleARN :: Lens' CreateRoleAlias Text
craRoleARN = lens _craRoleARN (\s a -> s {_craRoleARN = a})

instance AWSRequest CreateRoleAlias where
  type Rs CreateRoleAlias = CreateRoleAliasResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateRoleAliasResponse'
            <$> (x .?> "roleAliasArn")
            <*> (x .?> "roleAlias")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRoleAlias

instance NFData CreateRoleAlias

instance ToHeaders CreateRoleAlias where
  toHeaders = const mempty

instance ToJSON CreateRoleAlias where
  toJSON CreateRoleAlias' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _craTags,
            ("credentialDurationSeconds" .=)
              <$> _craCredentialDurationSeconds,
            Just ("roleArn" .= _craRoleARN)
          ]
      )

instance ToPath CreateRoleAlias where
  toPath CreateRoleAlias' {..} =
    mconcat ["/role-aliases/", toBS _craRoleAlias]

instance ToQuery CreateRoleAlias where
  toQuery = const mempty

-- | /See:/ 'createRoleAliasResponse' smart constructor.
data CreateRoleAliasResponse = CreateRoleAliasResponse'
  { _crarrsRoleAliasARN ::
      !(Maybe Text),
    _crarrsRoleAlias ::
      !(Maybe Text),
    _crarrsResponseStatus ::
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

-- | Creates a value of 'CreateRoleAliasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crarrsRoleAliasARN' - The role alias ARN.
--
-- * 'crarrsRoleAlias' - The role alias.
--
-- * 'crarrsResponseStatus' - -- | The response status code.
createRoleAliasResponse ::
  -- | 'crarrsResponseStatus'
  Int ->
  CreateRoleAliasResponse
createRoleAliasResponse pResponseStatus_ =
  CreateRoleAliasResponse'
    { _crarrsRoleAliasARN =
        Nothing,
      _crarrsRoleAlias = Nothing,
      _crarrsResponseStatus = pResponseStatus_
    }

-- | The role alias ARN.
crarrsRoleAliasARN :: Lens' CreateRoleAliasResponse (Maybe Text)
crarrsRoleAliasARN = lens _crarrsRoleAliasARN (\s a -> s {_crarrsRoleAliasARN = a})

-- | The role alias.
crarrsRoleAlias :: Lens' CreateRoleAliasResponse (Maybe Text)
crarrsRoleAlias = lens _crarrsRoleAlias (\s a -> s {_crarrsRoleAlias = a})

-- | -- | The response status code.
crarrsResponseStatus :: Lens' CreateRoleAliasResponse Int
crarrsResponseStatus = lens _crarrsResponseStatus (\s a -> s {_crarrsResponseStatus = a})

instance NFData CreateRoleAliasResponse
