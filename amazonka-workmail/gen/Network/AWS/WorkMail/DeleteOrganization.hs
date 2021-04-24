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
-- Module      : Network.AWS.WorkMail.DeleteOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon WorkMail organization and all underlying AWS resources managed by Amazon WorkMail as part of the organization. You can choose whether to delete the associated directory. For more information, see <https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html Removing an organization> in the /Amazon WorkMail Administrator Guide/ .
module Network.AWS.WorkMail.DeleteOrganization
  ( -- * Creating a Request
    deleteOrganization,
    DeleteOrganization,

    -- * Request Lenses
    delClientToken,
    delOrganizationId,
    delDeleteDirectory,

    -- * Destructuring the Response
    deleteOrganizationResponse,
    DeleteOrganizationResponse,

    -- * Response Lenses
    dorrsOrganizationId,
    dorrsState,
    dorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'deleteOrganization' smart constructor.
data DeleteOrganization = DeleteOrganization'
  { _delClientToken ::
      !(Maybe Text),
    _delOrganizationId :: !Text,
    _delDeleteDirectory :: !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delClientToken' - The idempotency token associated with the request.
--
-- * 'delOrganizationId' - The organization ID.
--
-- * 'delDeleteDirectory' - If true, deletes the AWS Directory Service directory associated with the organization.
deleteOrganization ::
  -- | 'delOrganizationId'
  Text ->
  -- | 'delDeleteDirectory'
  Bool ->
  DeleteOrganization
deleteOrganization pOrganizationId_ pDeleteDirectory_ =
  DeleteOrganization'
    { _delClientToken = Nothing,
      _delOrganizationId = pOrganizationId_,
      _delDeleteDirectory = pDeleteDirectory_
    }

-- | The idempotency token associated with the request.
delClientToken :: Lens' DeleteOrganization (Maybe Text)
delClientToken = lens _delClientToken (\s a -> s {_delClientToken = a})

-- | The organization ID.
delOrganizationId :: Lens' DeleteOrganization Text
delOrganizationId = lens _delOrganizationId (\s a -> s {_delOrganizationId = a})

-- | If true, deletes the AWS Directory Service directory associated with the organization.
delDeleteDirectory :: Lens' DeleteOrganization Bool
delDeleteDirectory = lens _delDeleteDirectory (\s a -> s {_delDeleteDirectory = a})

instance AWSRequest DeleteOrganization where
  type
    Rs DeleteOrganization =
      DeleteOrganizationResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          DeleteOrganizationResponse'
            <$> (x .?> "OrganizationId")
            <*> (x .?> "State")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteOrganization

instance NFData DeleteOrganization

instance ToHeaders DeleteOrganization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.DeleteOrganization" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteOrganization where
  toJSON DeleteOrganization' {..} =
    object
      ( catMaybes
          [ ("ClientToken" .=) <$> _delClientToken,
            Just ("OrganizationId" .= _delOrganizationId),
            Just ("DeleteDirectory" .= _delDeleteDirectory)
          ]
      )

instance ToPath DeleteOrganization where
  toPath = const "/"

instance ToQuery DeleteOrganization where
  toQuery = const mempty

-- | /See:/ 'deleteOrganizationResponse' smart constructor.
data DeleteOrganizationResponse = DeleteOrganizationResponse'
  { _dorrsOrganizationId ::
      !(Maybe Text),
    _dorrsState ::
      !(Maybe Text),
    _dorrsResponseStatus ::
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

-- | Creates a value of 'DeleteOrganizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dorrsOrganizationId' - The organization ID.
--
-- * 'dorrsState' - The state of the organization.
--
-- * 'dorrsResponseStatus' - -- | The response status code.
deleteOrganizationResponse ::
  -- | 'dorrsResponseStatus'
  Int ->
  DeleteOrganizationResponse
deleteOrganizationResponse pResponseStatus_ =
  DeleteOrganizationResponse'
    { _dorrsOrganizationId =
        Nothing,
      _dorrsState = Nothing,
      _dorrsResponseStatus = pResponseStatus_
    }

-- | The organization ID.
dorrsOrganizationId :: Lens' DeleteOrganizationResponse (Maybe Text)
dorrsOrganizationId = lens _dorrsOrganizationId (\s a -> s {_dorrsOrganizationId = a})

-- | The state of the organization.
dorrsState :: Lens' DeleteOrganizationResponse (Maybe Text)
dorrsState = lens _dorrsState (\s a -> s {_dorrsState = a})

-- | -- | The response status code.
dorrsResponseStatus :: Lens' DeleteOrganizationResponse Int
dorrsResponseStatus = lens _dorrsResponseStatus (\s a -> s {_dorrsResponseStatus = a})

instance NFData DeleteOrganizationResponse
