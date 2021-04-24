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
-- Module      : Network.AWS.AlexaBusiness.GetInvitationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the configured values for the user enrollment invitation email template.
module Network.AWS.AlexaBusiness.GetInvitationConfiguration
  ( -- * Creating a Request
    getInvitationConfiguration,
    GetInvitationConfiguration,

    -- * Destructuring the Response
    getInvitationConfigurationResponse,
    GetInvitationConfigurationResponse,

    -- * Response Lenses
    gicrrsOrganizationName,
    gicrrsContactEmail,
    gicrrsPrivateSkillIds,
    gicrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getInvitationConfiguration' smart constructor.
data GetInvitationConfiguration = GetInvitationConfiguration'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetInvitationConfiguration' with the minimum fields required to make a request.
getInvitationConfiguration ::
  GetInvitationConfiguration
getInvitationConfiguration =
  GetInvitationConfiguration'

instance AWSRequest GetInvitationConfiguration where
  type
    Rs GetInvitationConfiguration =
      GetInvitationConfigurationResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          GetInvitationConfigurationResponse'
            <$> (x .?> "OrganizationName")
            <*> (x .?> "ContactEmail")
            <*> (x .?> "PrivateSkillIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetInvitationConfiguration

instance NFData GetInvitationConfiguration

instance ToHeaders GetInvitationConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.GetInvitationConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInvitationConfiguration where
  toJSON = const (Object mempty)

instance ToPath GetInvitationConfiguration where
  toPath = const "/"

instance ToQuery GetInvitationConfiguration where
  toQuery = const mempty

-- | /See:/ 'getInvitationConfigurationResponse' smart constructor.
data GetInvitationConfigurationResponse = GetInvitationConfigurationResponse'
  { _gicrrsOrganizationName ::
      !( Maybe
           Text
       ),
    _gicrrsContactEmail ::
      !( Maybe
           Text
       ),
    _gicrrsPrivateSkillIds ::
      !( Maybe
           [Text]
       ),
    _gicrrsResponseStatus ::
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

-- | Creates a value of 'GetInvitationConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gicrrsOrganizationName' - The name of the organization sending the enrollment invite to a user.
--
-- * 'gicrrsContactEmail' - The email ID of the organization or individual contact that the enrolled user can use.
--
-- * 'gicrrsPrivateSkillIds' - The list of private skill IDs that you want to recommend to the user to enable in the invitation.
--
-- * 'gicrrsResponseStatus' - -- | The response status code.
getInvitationConfigurationResponse ::
  -- | 'gicrrsResponseStatus'
  Int ->
  GetInvitationConfigurationResponse
getInvitationConfigurationResponse pResponseStatus_ =
  GetInvitationConfigurationResponse'
    { _gicrrsOrganizationName =
        Nothing,
      _gicrrsContactEmail = Nothing,
      _gicrrsPrivateSkillIds = Nothing,
      _gicrrsResponseStatus =
        pResponseStatus_
    }

-- | The name of the organization sending the enrollment invite to a user.
gicrrsOrganizationName :: Lens' GetInvitationConfigurationResponse (Maybe Text)
gicrrsOrganizationName = lens _gicrrsOrganizationName (\s a -> s {_gicrrsOrganizationName = a})

-- | The email ID of the organization or individual contact that the enrolled user can use.
gicrrsContactEmail :: Lens' GetInvitationConfigurationResponse (Maybe Text)
gicrrsContactEmail = lens _gicrrsContactEmail (\s a -> s {_gicrrsContactEmail = a})

-- | The list of private skill IDs that you want to recommend to the user to enable in the invitation.
gicrrsPrivateSkillIds :: Lens' GetInvitationConfigurationResponse [Text]
gicrrsPrivateSkillIds = lens _gicrrsPrivateSkillIds (\s a -> s {_gicrrsPrivateSkillIds = a}) . _Default . _Coerce

-- | -- | The response status code.
gicrrsResponseStatus :: Lens' GetInvitationConfigurationResponse Int
gicrrsResponseStatus = lens _gicrrsResponseStatus (\s a -> s {_gicrrsResponseStatus = a})

instance NFData GetInvitationConfigurationResponse
