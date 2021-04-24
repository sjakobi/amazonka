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
-- Module      : Network.AWS.IoT.UpdateRoleAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a role alias.
module Network.AWS.IoT.UpdateRoleAlias
  ( -- * Creating a Request
    updateRoleAlias,
    UpdateRoleAlias,

    -- * Request Lenses
    uraRoleARN,
    uraCredentialDurationSeconds,
    uraRoleAlias,

    -- * Destructuring the Response
    updateRoleAliasResponse,
    UpdateRoleAliasResponse,

    -- * Response Lenses
    urarrsRoleAliasARN,
    urarrsRoleAlias,
    urarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateRoleAlias' smart constructor.
data UpdateRoleAlias = UpdateRoleAlias'
  { _uraRoleARN ::
      !(Maybe Text),
    _uraCredentialDurationSeconds ::
      !(Maybe Nat),
    _uraRoleAlias :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateRoleAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uraRoleARN' - The role ARN.
--
-- * 'uraCredentialDurationSeconds' - The number of seconds the credential will be valid.
--
-- * 'uraRoleAlias' - The role alias to update.
updateRoleAlias ::
  -- | 'uraRoleAlias'
  Text ->
  UpdateRoleAlias
updateRoleAlias pRoleAlias_ =
  UpdateRoleAlias'
    { _uraRoleARN = Nothing,
      _uraCredentialDurationSeconds = Nothing,
      _uraRoleAlias = pRoleAlias_
    }

-- | The role ARN.
uraRoleARN :: Lens' UpdateRoleAlias (Maybe Text)
uraRoleARN = lens _uraRoleARN (\s a -> s {_uraRoleARN = a})

-- | The number of seconds the credential will be valid.
uraCredentialDurationSeconds :: Lens' UpdateRoleAlias (Maybe Natural)
uraCredentialDurationSeconds = lens _uraCredentialDurationSeconds (\s a -> s {_uraCredentialDurationSeconds = a}) . mapping _Nat

-- | The role alias to update.
uraRoleAlias :: Lens' UpdateRoleAlias Text
uraRoleAlias = lens _uraRoleAlias (\s a -> s {_uraRoleAlias = a})

instance AWSRequest UpdateRoleAlias where
  type Rs UpdateRoleAlias = UpdateRoleAliasResponse
  request = putJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateRoleAliasResponse'
            <$> (x .?> "roleAliasArn")
            <*> (x .?> "roleAlias")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateRoleAlias

instance NFData UpdateRoleAlias

instance ToHeaders UpdateRoleAlias where
  toHeaders = const mempty

instance ToJSON UpdateRoleAlias where
  toJSON UpdateRoleAlias' {..} =
    object
      ( catMaybes
          [ ("roleArn" .=) <$> _uraRoleARN,
            ("credentialDurationSeconds" .=)
              <$> _uraCredentialDurationSeconds
          ]
      )

instance ToPath UpdateRoleAlias where
  toPath UpdateRoleAlias' {..} =
    mconcat ["/role-aliases/", toBS _uraRoleAlias]

instance ToQuery UpdateRoleAlias where
  toQuery = const mempty

-- | /See:/ 'updateRoleAliasResponse' smart constructor.
data UpdateRoleAliasResponse = UpdateRoleAliasResponse'
  { _urarrsRoleAliasARN ::
      !(Maybe Text),
    _urarrsRoleAlias ::
      !(Maybe Text),
    _urarrsResponseStatus ::
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

-- | Creates a value of 'UpdateRoleAliasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urarrsRoleAliasARN' - The role alias ARN.
--
-- * 'urarrsRoleAlias' - The role alias.
--
-- * 'urarrsResponseStatus' - -- | The response status code.
updateRoleAliasResponse ::
  -- | 'urarrsResponseStatus'
  Int ->
  UpdateRoleAliasResponse
updateRoleAliasResponse pResponseStatus_ =
  UpdateRoleAliasResponse'
    { _urarrsRoleAliasARN =
        Nothing,
      _urarrsRoleAlias = Nothing,
      _urarrsResponseStatus = pResponseStatus_
    }

-- | The role alias ARN.
urarrsRoleAliasARN :: Lens' UpdateRoleAliasResponse (Maybe Text)
urarrsRoleAliasARN = lens _urarrsRoleAliasARN (\s a -> s {_urarrsRoleAliasARN = a})

-- | The role alias.
urarrsRoleAlias :: Lens' UpdateRoleAliasResponse (Maybe Text)
urarrsRoleAlias = lens _urarrsRoleAlias (\s a -> s {_urarrsRoleAlias = a})

-- | -- | The response status code.
urarrsResponseStatus :: Lens' UpdateRoleAliasResponse Int
urarrsResponseStatus = lens _urarrsResponseStatus (\s a -> s {_urarrsResponseStatus = a})

instance NFData UpdateRoleAliasResponse
