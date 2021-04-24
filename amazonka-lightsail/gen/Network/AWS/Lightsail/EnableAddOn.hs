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
-- Module      : Network.AWS.Lightsail.EnableAddOn
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or modifies an add-on for an Amazon Lightsail resource. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots Lightsail Dev Guide> .
module Network.AWS.Lightsail.EnableAddOn
  ( -- * Creating a Request
    enableAddOn,
    EnableAddOn,

    -- * Request Lenses
    eaoResourceName,
    eaoAddOnRequest,

    -- * Destructuring the Response
    enableAddOnResponse,
    EnableAddOnResponse,

    -- * Response Lenses
    eaorrsOperations,
    eaorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'enableAddOn' smart constructor.
data EnableAddOn = EnableAddOn'
  { _eaoResourceName ::
      !Text,
    _eaoAddOnRequest :: !AddOnRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnableAddOn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaoResourceName' - The name of the source resource for which to enable or modify the add-on.
--
-- * 'eaoAddOnRequest' - An array of strings representing the add-on to enable or modify.
enableAddOn ::
  -- | 'eaoResourceName'
  Text ->
  -- | 'eaoAddOnRequest'
  AddOnRequest ->
  EnableAddOn
enableAddOn pResourceName_ pAddOnRequest_ =
  EnableAddOn'
    { _eaoResourceName = pResourceName_,
      _eaoAddOnRequest = pAddOnRequest_
    }

-- | The name of the source resource for which to enable or modify the add-on.
eaoResourceName :: Lens' EnableAddOn Text
eaoResourceName = lens _eaoResourceName (\s a -> s {_eaoResourceName = a})

-- | An array of strings representing the add-on to enable or modify.
eaoAddOnRequest :: Lens' EnableAddOn AddOnRequest
eaoAddOnRequest = lens _eaoAddOnRequest (\s a -> s {_eaoAddOnRequest = a})

instance AWSRequest EnableAddOn where
  type Rs EnableAddOn = EnableAddOnResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          EnableAddOnResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable EnableAddOn

instance NFData EnableAddOn

instance ToHeaders EnableAddOn where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Lightsail_20161128.EnableAddOn" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON EnableAddOn where
  toJSON EnableAddOn' {..} =
    object
      ( catMaybes
          [ Just ("resourceName" .= _eaoResourceName),
            Just ("addOnRequest" .= _eaoAddOnRequest)
          ]
      )

instance ToPath EnableAddOn where
  toPath = const "/"

instance ToQuery EnableAddOn where
  toQuery = const mempty

-- | /See:/ 'enableAddOnResponse' smart constructor.
data EnableAddOnResponse = EnableAddOnResponse'
  { _eaorrsOperations ::
      !(Maybe [Operation]),
    _eaorrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnableAddOnResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eaorrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'eaorrsResponseStatus' - -- | The response status code.
enableAddOnResponse ::
  -- | 'eaorrsResponseStatus'
  Int ->
  EnableAddOnResponse
enableAddOnResponse pResponseStatus_ =
  EnableAddOnResponse'
    { _eaorrsOperations = Nothing,
      _eaorrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
eaorrsOperations :: Lens' EnableAddOnResponse [Operation]
eaorrsOperations = lens _eaorrsOperations (\s a -> s {_eaorrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
eaorrsResponseStatus :: Lens' EnableAddOnResponse Int
eaorrsResponseStatus = lens _eaorrsResponseStatus (\s a -> s {_eaorrsResponseStatus = a})

instance NFData EnableAddOnResponse
