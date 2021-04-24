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
-- Module      : Network.AWS.CognitoIdentity.DeleteIdentities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.
--
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.DeleteIdentities
  ( -- * Creating a Request
    deleteIdentities,
    DeleteIdentities,

    -- * Request Lenses
    diIdentityIdsToDelete,

    -- * Destructuring the Response
    deleteIdentitiesResponse,
    DeleteIdentitiesResponse,

    -- * Response Lenses
    dirrsUnprocessedIdentityIds,
    dirrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the @DeleteIdentities@ action.
--
--
--
-- /See:/ 'deleteIdentities' smart constructor.
newtype DeleteIdentities = DeleteIdentities'
  { _diIdentityIdsToDelete ::
      List1 Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteIdentities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diIdentityIdsToDelete' - A list of 1-60 identities that you want to delete.
deleteIdentities ::
  -- | 'diIdentityIdsToDelete'
  NonEmpty Text ->
  DeleteIdentities
deleteIdentities pIdentityIdsToDelete_ =
  DeleteIdentities'
    { _diIdentityIdsToDelete =
        _List1 # pIdentityIdsToDelete_
    }

-- | A list of 1-60 identities that you want to delete.
diIdentityIdsToDelete :: Lens' DeleteIdentities (NonEmpty Text)
diIdentityIdsToDelete = lens _diIdentityIdsToDelete (\s a -> s {_diIdentityIdsToDelete = a}) . _List1

instance AWSRequest DeleteIdentities where
  type Rs DeleteIdentities = DeleteIdentitiesResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          DeleteIdentitiesResponse'
            <$> (x .?> "UnprocessedIdentityIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteIdentities

instance NFData DeleteIdentities

instance ToHeaders DeleteIdentities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.DeleteIdentities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteIdentities where
  toJSON DeleteIdentities' {..} =
    object
      ( catMaybes
          [ Just
              ("IdentityIdsToDelete" .= _diIdentityIdsToDelete)
          ]
      )

instance ToPath DeleteIdentities where
  toPath = const "/"

instance ToQuery DeleteIdentities where
  toQuery = const mempty

-- | Returned in response to a successful @DeleteIdentities@ operation.
--
--
--
-- /See:/ 'deleteIdentitiesResponse' smart constructor.
data DeleteIdentitiesResponse = DeleteIdentitiesResponse'
  { _dirrsUnprocessedIdentityIds ::
      !( Maybe
           [UnprocessedIdentityId]
       ),
    _dirrsResponseStatus ::
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

-- | Creates a value of 'DeleteIdentitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsUnprocessedIdentityIds' - An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
deleteIdentitiesResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DeleteIdentitiesResponse
deleteIdentitiesResponse pResponseStatus_ =
  DeleteIdentitiesResponse'
    { _dirrsUnprocessedIdentityIds =
        Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.
dirrsUnprocessedIdentityIds :: Lens' DeleteIdentitiesResponse [UnprocessedIdentityId]
dirrsUnprocessedIdentityIds = lens _dirrsUnprocessedIdentityIds (\s a -> s {_dirrsUnprocessedIdentityIds = a}) . _Default . _Coerce

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DeleteIdentitiesResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DeleteIdentitiesResponse
