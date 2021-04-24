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
-- Module      : Network.AWS.Glue.GetTrigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the definition of a trigger.
module Network.AWS.Glue.GetTrigger
  ( -- * Creating a Request
    getTrigger,
    GetTrigger,

    -- * Request Lenses
    gtName,

    -- * Destructuring the Response
    getTriggerResponse,
    GetTriggerResponse,

    -- * Response Lenses
    gettriggerresponseersTrigger,
    gettriggerresponseersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTrigger' smart constructor.
newtype GetTrigger = GetTrigger' {_gtName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtName' - The name of the trigger to retrieve.
getTrigger ::
  -- | 'gtName'
  Text ->
  GetTrigger
getTrigger pName_ = GetTrigger' {_gtName = pName_}

-- | The name of the trigger to retrieve.
gtName :: Lens' GetTrigger Text
gtName = lens _gtName (\s a -> s {_gtName = a})

instance AWSRequest GetTrigger where
  type Rs GetTrigger = GetTriggerResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetTriggerResponse'
            <$> (x .?> "Trigger") <*> (pure (fromEnum s))
      )

instance Hashable GetTrigger

instance NFData GetTrigger

instance ToHeaders GetTrigger where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetTrigger" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetTrigger where
  toJSON GetTrigger' {..} =
    object (catMaybes [Just ("Name" .= _gtName)])

instance ToPath GetTrigger where
  toPath = const "/"

instance ToQuery GetTrigger where
  toQuery = const mempty

-- | /See:/ 'getTriggerResponse' smart constructor.
data GetTriggerResponse = GetTriggerResponse'
  { _gettriggerresponseersTrigger ::
      !(Maybe Trigger),
    _gettriggerresponseersResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTriggerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gettriggerresponseersTrigger' - The requested trigger definition.
--
-- * 'gettriggerresponseersResponseStatus' - -- | The response status code.
getTriggerResponse ::
  -- | 'gettriggerresponseersResponseStatus'
  Int ->
  GetTriggerResponse
getTriggerResponse pResponseStatus_ =
  GetTriggerResponse'
    { _gettriggerresponseersTrigger =
        Nothing,
      _gettriggerresponseersResponseStatus =
        pResponseStatus_
    }

-- | The requested trigger definition.
gettriggerresponseersTrigger :: Lens' GetTriggerResponse (Maybe Trigger)
gettriggerresponseersTrigger = lens _gettriggerresponseersTrigger (\s a -> s {_gettriggerresponseersTrigger = a})

-- | -- | The response status code.
gettriggerresponseersResponseStatus :: Lens' GetTriggerResponse Int
gettriggerresponseersResponseStatus = lens _gettriggerresponseersResponseStatus (\s a -> s {_gettriggerresponseersResponseStatus = a})

instance NFData GetTriggerResponse
