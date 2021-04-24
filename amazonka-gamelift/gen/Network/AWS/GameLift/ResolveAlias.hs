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
-- Module      : Network.AWS.GameLift.ResolveAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the fleet ID that an alias is currently pointing to.
--
--
--     * 'CreateAlias'
--
--     * 'ListAliases'
--
--     * 'DescribeAlias'
--
--     * 'UpdateAlias'
--
--     * 'DeleteAlias'
--
--     * 'ResolveAlias'
module Network.AWS.GameLift.ResolveAlias
  ( -- * Creating a Request
    resolveAlias,
    ResolveAlias,

    -- * Request Lenses
    raAliasId,

    -- * Destructuring the Response
    resolveAliasResponse,
    ResolveAliasResponse,

    -- * Response Lenses
    rarrsFleetARN,
    rarrsFleetId,
    rarrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'resolveAlias' smart constructor.
newtype ResolveAlias = ResolveAlias'
  { _raAliasId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolveAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raAliasId' - The unique identifier of the alias that you want to retrieve a fleet ID for. You can use either the alias ID or ARN value.
resolveAlias ::
  -- | 'raAliasId'
  Text ->
  ResolveAlias
resolveAlias pAliasId_ =
  ResolveAlias' {_raAliasId = pAliasId_}

-- | The unique identifier of the alias that you want to retrieve a fleet ID for. You can use either the alias ID or ARN value.
raAliasId :: Lens' ResolveAlias Text
raAliasId = lens _raAliasId (\s a -> s {_raAliasId = a})

instance AWSRequest ResolveAlias where
  type Rs ResolveAlias = ResolveAliasResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          ResolveAliasResponse'
            <$> (x .?> "FleetArn")
            <*> (x .?> "FleetId")
            <*> (pure (fromEnum s))
      )

instance Hashable ResolveAlias

instance NFData ResolveAlias

instance ToHeaders ResolveAlias where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.ResolveAlias" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ResolveAlias where
  toJSON ResolveAlias' {..} =
    object (catMaybes [Just ("AliasId" .= _raAliasId)])

instance ToPath ResolveAlias where
  toPath = const "/"

instance ToQuery ResolveAlias where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'resolveAliasResponse' smart constructor.
data ResolveAliasResponse = ResolveAliasResponse'
  { _rarrsFleetARN ::
      !(Maybe Text),
    _rarrsFleetId ::
      !(Maybe Text),
    _rarrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResolveAliasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rarrsFleetARN' - The Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) associated with the GameLift fleet resource that this alias points to.
--
-- * 'rarrsFleetId' - The fleet identifier that the alias is pointing to.
--
-- * 'rarrsResponseStatus' - -- | The response status code.
resolveAliasResponse ::
  -- | 'rarrsResponseStatus'
  Int ->
  ResolveAliasResponse
resolveAliasResponse pResponseStatus_ =
  ResolveAliasResponse'
    { _rarrsFleetARN = Nothing,
      _rarrsFleetId = Nothing,
      _rarrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (<https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN> ) associated with the GameLift fleet resource that this alias points to.
rarrsFleetARN :: Lens' ResolveAliasResponse (Maybe Text)
rarrsFleetARN = lens _rarrsFleetARN (\s a -> s {_rarrsFleetARN = a})

-- | The fleet identifier that the alias is pointing to.
rarrsFleetId :: Lens' ResolveAliasResponse (Maybe Text)
rarrsFleetId = lens _rarrsFleetId (\s a -> s {_rarrsFleetId = a})

-- | -- | The response status code.
rarrsResponseStatus :: Lens' ResolveAliasResponse Int
rarrsResponseStatus = lens _rarrsResponseStatus (\s a -> s {_rarrsResponseStatus = a})

instance NFData ResolveAliasResponse
