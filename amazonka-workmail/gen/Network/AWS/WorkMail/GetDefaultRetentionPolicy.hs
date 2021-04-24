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
-- Module      : Network.AWS.WorkMail.GetDefaultRetentionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the default retention policy details for the specified organization.
module Network.AWS.WorkMail.GetDefaultRetentionPolicy
  ( -- * Creating a Request
    getDefaultRetentionPolicy,
    GetDefaultRetentionPolicy,

    -- * Request Lenses
    gdrpOrganizationId,

    -- * Destructuring the Response
    getDefaultRetentionPolicyResponse,
    GetDefaultRetentionPolicyResponse,

    -- * Response Lenses
    gdrprrsId,
    gdrprrsFolderConfigurations,
    gdrprrsName,
    gdrprrsDescription,
    gdrprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'getDefaultRetentionPolicy' smart constructor.
newtype GetDefaultRetentionPolicy = GetDefaultRetentionPolicy'
  { _gdrpOrganizationId ::
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

-- | Creates a value of 'GetDefaultRetentionPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrpOrganizationId' - The organization ID.
getDefaultRetentionPolicy ::
  -- | 'gdrpOrganizationId'
  Text ->
  GetDefaultRetentionPolicy
getDefaultRetentionPolicy pOrganizationId_ =
  GetDefaultRetentionPolicy'
    { _gdrpOrganizationId =
        pOrganizationId_
    }

-- | The organization ID.
gdrpOrganizationId :: Lens' GetDefaultRetentionPolicy Text
gdrpOrganizationId = lens _gdrpOrganizationId (\s a -> s {_gdrpOrganizationId = a})

instance AWSRequest GetDefaultRetentionPolicy where
  type
    Rs GetDefaultRetentionPolicy =
      GetDefaultRetentionPolicyResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          GetDefaultRetentionPolicyResponse'
            <$> (x .?> "Id")
            <*> (x .?> "FolderConfigurations" .!@ mempty)
            <*> (x .?> "Name")
            <*> (x .?> "Description")
            <*> (pure (fromEnum s))
      )

instance Hashable GetDefaultRetentionPolicy

instance NFData GetDefaultRetentionPolicy

instance ToHeaders GetDefaultRetentionPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.GetDefaultRetentionPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDefaultRetentionPolicy where
  toJSON GetDefaultRetentionPolicy' {..} =
    object
      ( catMaybes
          [Just ("OrganizationId" .= _gdrpOrganizationId)]
      )

instance ToPath GetDefaultRetentionPolicy where
  toPath = const "/"

instance ToQuery GetDefaultRetentionPolicy where
  toQuery = const mempty

-- | /See:/ 'getDefaultRetentionPolicyResponse' smart constructor.
data GetDefaultRetentionPolicyResponse = GetDefaultRetentionPolicyResponse'
  { _gdrprrsId ::
      !( Maybe
           Text
       ),
    _gdrprrsFolderConfigurations ::
      !( Maybe
           [FolderConfiguration]
       ),
    _gdrprrsName ::
      !( Maybe
           Text
       ),
    _gdrprrsDescription ::
      !( Maybe
           Text
       ),
    _gdrprrsResponseStatus ::
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

-- | Creates a value of 'GetDefaultRetentionPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrprrsId' - The retention policy ID.
--
-- * 'gdrprrsFolderConfigurations' - The retention policy folder configurations.
--
-- * 'gdrprrsName' - The retention policy name.
--
-- * 'gdrprrsDescription' - The retention policy description.
--
-- * 'gdrprrsResponseStatus' - -- | The response status code.
getDefaultRetentionPolicyResponse ::
  -- | 'gdrprrsResponseStatus'
  Int ->
  GetDefaultRetentionPolicyResponse
getDefaultRetentionPolicyResponse pResponseStatus_ =
  GetDefaultRetentionPolicyResponse'
    { _gdrprrsId =
        Nothing,
      _gdrprrsFolderConfigurations = Nothing,
      _gdrprrsName = Nothing,
      _gdrprrsDescription = Nothing,
      _gdrprrsResponseStatus =
        pResponseStatus_
    }

-- | The retention policy ID.
gdrprrsId :: Lens' GetDefaultRetentionPolicyResponse (Maybe Text)
gdrprrsId = lens _gdrprrsId (\s a -> s {_gdrprrsId = a})

-- | The retention policy folder configurations.
gdrprrsFolderConfigurations :: Lens' GetDefaultRetentionPolicyResponse [FolderConfiguration]
gdrprrsFolderConfigurations = lens _gdrprrsFolderConfigurations (\s a -> s {_gdrprrsFolderConfigurations = a}) . _Default . _Coerce

-- | The retention policy name.
gdrprrsName :: Lens' GetDefaultRetentionPolicyResponse (Maybe Text)
gdrprrsName = lens _gdrprrsName (\s a -> s {_gdrprrsName = a})

-- | The retention policy description.
gdrprrsDescription :: Lens' GetDefaultRetentionPolicyResponse (Maybe Text)
gdrprrsDescription = lens _gdrprrsDescription (\s a -> s {_gdrprrsDescription = a})

-- | -- | The response status code.
gdrprrsResponseStatus :: Lens' GetDefaultRetentionPolicyResponse Int
gdrprrsResponseStatus = lens _gdrprrsResponseStatus (\s a -> s {_gdrprrsResponseStatus = a})

instance NFData GetDefaultRetentionPolicyResponse
