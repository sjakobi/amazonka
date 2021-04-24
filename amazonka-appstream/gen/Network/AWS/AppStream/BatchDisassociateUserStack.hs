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
-- Module      : Network.AWS.AppStream.BatchDisassociateUserStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the specified users from the specified stacks.
module Network.AWS.AppStream.BatchDisassociateUserStack
  ( -- * Creating a Request
    batchDisassociateUserStack,
    BatchDisassociateUserStack,

    -- * Request Lenses
    bdusUserStackAssociations,

    -- * Destructuring the Response
    batchDisassociateUserStackResponse,
    BatchDisassociateUserStackResponse,

    -- * Response Lenses
    bdusrrsErrors,
    bdusrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchDisassociateUserStack' smart constructor.
newtype BatchDisassociateUserStack = BatchDisassociateUserStack'
  { _bdusUserStackAssociations ::
      List1
        UserStackAssociation
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDisassociateUserStack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdusUserStackAssociations' - The list of UserStackAssociation objects.
batchDisassociateUserStack ::
  -- | 'bdusUserStackAssociations'
  NonEmpty UserStackAssociation ->
  BatchDisassociateUserStack
batchDisassociateUserStack pUserStackAssociations_ =
  BatchDisassociateUserStack'
    { _bdusUserStackAssociations =
        _List1 # pUserStackAssociations_
    }

-- | The list of UserStackAssociation objects.
bdusUserStackAssociations :: Lens' BatchDisassociateUserStack (NonEmpty UserStackAssociation)
bdusUserStackAssociations = lens _bdusUserStackAssociations (\s a -> s {_bdusUserStackAssociations = a}) . _List1

instance AWSRequest BatchDisassociateUserStack where
  type
    Rs BatchDisassociateUserStack =
      BatchDisassociateUserStackResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          BatchDisassociateUserStackResponse'
            <$> (x .?> "errors" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable BatchDisassociateUserStack

instance NFData BatchDisassociateUserStack

instance ToHeaders BatchDisassociateUserStack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.BatchDisassociateUserStack" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchDisassociateUserStack where
  toJSON BatchDisassociateUserStack' {..} =
    object
      ( catMaybes
          [ Just
              ( "UserStackAssociations"
                  .= _bdusUserStackAssociations
              )
          ]
      )

instance ToPath BatchDisassociateUserStack where
  toPath = const "/"

instance ToQuery BatchDisassociateUserStack where
  toQuery = const mempty

-- | /See:/ 'batchDisassociateUserStackResponse' smart constructor.
data BatchDisassociateUserStackResponse = BatchDisassociateUserStackResponse'
  { _bdusrrsErrors ::
      !( Maybe
           [UserStackAssociationError]
       ),
    _bdusrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDisassociateUserStackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdusrrsErrors' - The list of UserStackAssociationError objects.
--
-- * 'bdusrrsResponseStatus' - -- | The response status code.
batchDisassociateUserStackResponse ::
  -- | 'bdusrrsResponseStatus'
  Int ->
  BatchDisassociateUserStackResponse
batchDisassociateUserStackResponse pResponseStatus_ =
  BatchDisassociateUserStackResponse'
    { _bdusrrsErrors =
        Nothing,
      _bdusrrsResponseStatus =
        pResponseStatus_
    }

-- | The list of UserStackAssociationError objects.
bdusrrsErrors :: Lens' BatchDisassociateUserStackResponse [UserStackAssociationError]
bdusrrsErrors = lens _bdusrrsErrors (\s a -> s {_bdusrrsErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
bdusrrsResponseStatus :: Lens' BatchDisassociateUserStackResponse Int
bdusrrsResponseStatus = lens _bdusrrsResponseStatus (\s a -> s {_bdusrrsResponseStatus = a})

instance NFData BatchDisassociateUserStackResponse
