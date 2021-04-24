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
-- Module      : Network.AWS.Redshift.DeleteEventSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon Redshift event notification subscription.
module Network.AWS.Redshift.DeleteEventSubscription
  ( -- * Creating a Request
    deleteEventSubscription,
    DeleteEventSubscription,

    -- * Request Lenses
    dSubscriptionName,

    -- * Destructuring the Response
    deleteEventSubscriptionResponse,
    DeleteEventSubscriptionResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
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
-- * 'dSubscriptionName' - The name of the Amazon Redshift event notification subscription to be deleted.
deleteEventSubscription ::
  -- | 'dSubscriptionName'
  Text ->
  DeleteEventSubscription
deleteEventSubscription pSubscriptionName_ =
  DeleteEventSubscription'
    { _dSubscriptionName =
        pSubscriptionName_
    }

-- | The name of the Amazon Redshift event notification subscription to be deleted.
dSubscriptionName :: Lens' DeleteEventSubscription Text
dSubscriptionName = lens _dSubscriptionName (\s a -> s {_dSubscriptionName = a})

instance AWSRequest DeleteEventSubscription where
  type
    Rs DeleteEventSubscription =
      DeleteEventSubscriptionResponse
  request = postQuery redshift
  response =
    receiveNull DeleteEventSubscriptionResponse'

instance Hashable DeleteEventSubscription

instance NFData DeleteEventSubscription

instance ToHeaders DeleteEventSubscription where
  toHeaders = const mempty

instance ToPath DeleteEventSubscription where
  toPath = const "/"

instance ToQuery DeleteEventSubscription where
  toQuery DeleteEventSubscription' {..} =
    mconcat
      [ "Action"
          =: ("DeleteEventSubscription" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "SubscriptionName" =: _dSubscriptionName
      ]

-- | /See:/ 'deleteEventSubscriptionResponse' smart constructor.
data DeleteEventSubscriptionResponse = DeleteEventSubscriptionResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteEventSubscriptionResponse' with the minimum fields required to make a request.
deleteEventSubscriptionResponse ::
  DeleteEventSubscriptionResponse
deleteEventSubscriptionResponse =
  DeleteEventSubscriptionResponse'

instance NFData DeleteEventSubscriptionResponse
