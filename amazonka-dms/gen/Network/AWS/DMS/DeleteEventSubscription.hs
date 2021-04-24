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
-- Module      : Network.AWS.DMS.DeleteEventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an AWS DMS event subscription.
module Network.AWS.DMS.DeleteEventSubscription
  ( -- * Creating a Request
    deleteEventSubscription,
    DeleteEventSubscription,

    -- * Request Lenses
    dSubscriptionName,

    -- * Destructuring the Response
    deleteEventSubscriptionResponse,
    DeleteEventSubscriptionResponse,

    -- * Response Lenses
    desrersEventSubscription,
    desrersResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'deleteEventSubscription' smart constructor.
newtype DeleteEventSubscription = DeleteEventSubscription'
  { _dSubscriptionName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteEventSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSubscriptionName' - The name of the DMS event notification subscription to be deleted.
deleteEventSubscription ::
  -- | 'dSubscriptionName'
  Text ->
  DeleteEventSubscription
deleteEventSubscription pSubscriptionName_ =
  DeleteEventSubscription'
    { _dSubscriptionName =
        pSubscriptionName_
    }

-- | The name of the DMS event notification subscription to be deleted.
dSubscriptionName :: Lens' DeleteEventSubscription Text
dSubscriptionName = lens _dSubscriptionName (\s a -> s {_dSubscriptionName = a})

instance AWSRequest DeleteEventSubscription where
  type
    Rs DeleteEventSubscription =
      DeleteEventSubscriptionResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DeleteEventSubscriptionResponse'
            <$> (x .?> "EventSubscription") <*> (pure (fromEnum s))
      )

instance Hashable DeleteEventSubscription

instance NFData DeleteEventSubscription

instance ToHeaders DeleteEventSubscription where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DeleteEventSubscription" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteEventSubscription where
  toJSON DeleteEventSubscription' {..} =
    object
      ( catMaybes
          [Just ("SubscriptionName" .= _dSubscriptionName)]
      )

instance ToPath DeleteEventSubscription where
  toPath = const "/"

instance ToQuery DeleteEventSubscription where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'deleteEventSubscriptionResponse' smart constructor.
data DeleteEventSubscriptionResponse = DeleteEventSubscriptionResponse'
  { _desrersEventSubscription ::
      !( Maybe
           EventSubscription
       ),
    _desrersResponseStatus ::
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

-- | Creates a value of 'DeleteEventSubscriptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrersEventSubscription' - The event subscription that was deleted.
--
-- * 'desrersResponseStatus' - -- | The response status code.
deleteEventSubscriptionResponse ::
  -- | 'desrersResponseStatus'
  Int ->
  DeleteEventSubscriptionResponse
deleteEventSubscriptionResponse pResponseStatus_ =
  DeleteEventSubscriptionResponse'
    { _desrersEventSubscription =
        Nothing,
      _desrersResponseStatus = pResponseStatus_
    }

-- | The event subscription that was deleted.
desrersEventSubscription :: Lens' DeleteEventSubscriptionResponse (Maybe EventSubscription)
desrersEventSubscription = lens _desrersEventSubscription (\s a -> s {_desrersEventSubscription = a})

-- | -- | The response status code.
desrersResponseStatus :: Lens' DeleteEventSubscriptionResponse Int
desrersResponseStatus = lens _desrersResponseStatus (\s a -> s {_desrersResponseStatus = a})

instance NFData DeleteEventSubscriptionResponse
