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
-- Module      : Network.AWS.ServerlessApplicationRepository.GetApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified application.
module Network.AWS.ServerlessApplicationRepository.GetApplication
  ( -- * Creating a Request
    getApplication,
    GetApplication,

    -- * Request Lenses
    gaSemanticVersion,
    gaApplicationId,

    -- * Destructuring the Response
    getApplicationResponse,
    GetApplicationResponse,

    -- * Response Lenses
    garrsApplicationId,
    garrsCreationTime,
    garrsSpdxLicenseId,
    garrsLicenseURL,
    garrsVerifiedAuthorURL,
    garrsLabels,
    garrsAuthor,
    garrsVersion,
    garrsHomePageURL,
    garrsName,
    garrsIsVerifiedAuthor,
    garrsReadmeURL,
    garrsDescription,
    garrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'getApplication' smart constructor.
data GetApplication = GetApplication'
  { _gaSemanticVersion ::
      !(Maybe Text),
    _gaApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaSemanticVersion' - The semantic version of the application to get.
--
-- * 'gaApplicationId' - The Amazon Resource Name (ARN) of the application.
getApplication ::
  -- | 'gaApplicationId'
  Text ->
  GetApplication
getApplication pApplicationId_ =
  GetApplication'
    { _gaSemanticVersion = Nothing,
      _gaApplicationId = pApplicationId_
    }

-- | The semantic version of the application to get.
gaSemanticVersion :: Lens' GetApplication (Maybe Text)
gaSemanticVersion = lens _gaSemanticVersion (\s a -> s {_gaSemanticVersion = a})

-- | The Amazon Resource Name (ARN) of the application.
gaApplicationId :: Lens' GetApplication Text
gaApplicationId = lens _gaApplicationId (\s a -> s {_gaApplicationId = a})

instance AWSRequest GetApplication where
  type Rs GetApplication = GetApplicationResponse
  request = get serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          GetApplicationResponse'
            <$> (x .?> "applicationId")
            <*> (x .?> "creationTime")
            <*> (x .?> "spdxLicenseId")
            <*> (x .?> "licenseUrl")
            <*> (x .?> "verifiedAuthorUrl")
            <*> (x .?> "labels" .!@ mempty)
            <*> (x .?> "author")
            <*> (x .?> "version")
            <*> (x .?> "homePageUrl")
            <*> (x .?> "name")
            <*> (x .?> "isVerifiedAuthor")
            <*> (x .?> "readmeUrl")
            <*> (x .?> "description")
            <*> (pure (fromEnum s))
      )

instance Hashable GetApplication

instance NFData GetApplication

instance ToHeaders GetApplication where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetApplication where
  toPath GetApplication' {..} =
    mconcat ["/applications/", toBS _gaApplicationId]

instance ToQuery GetApplication where
  toQuery GetApplication' {..} =
    mconcat ["semanticVersion" =: _gaSemanticVersion]

-- | /See:/ 'getApplicationResponse' smart constructor.
data GetApplicationResponse = GetApplicationResponse'
  { _garrsApplicationId ::
      !(Maybe Text),
    _garrsCreationTime ::
      !(Maybe Text),
    _garrsSpdxLicenseId ::
      !(Maybe Text),
    _garrsLicenseURL ::
      !(Maybe Text),
    _garrsVerifiedAuthorURL ::
      !(Maybe Text),
    _garrsLabels ::
      !(Maybe [Text]),
    _garrsAuthor ::
      !(Maybe Text),
    _garrsVersion ::
      !(Maybe Version),
    _garrsHomePageURL ::
      !(Maybe Text),
    _garrsName ::
      !(Maybe Text),
    _garrsIsVerifiedAuthor ::
      !(Maybe Bool),
    _garrsReadmeURL ::
      !(Maybe Text),
    _garrsDescription ::
      !(Maybe Text),
    _garrsResponseStatus ::
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

-- | Creates a value of 'GetApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'garrsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'garrsCreationTime' - The date and time this resource was created.
--
-- * 'garrsSpdxLicenseId' - A valid identifier from https://spdx.org/licenses/.
--
-- * 'garrsLicenseURL' - A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
--
-- * 'garrsVerifiedAuthorURL' - The URL to the public profile of a verified author. This URL is submitted by the author.
--
-- * 'garrsLabels' - Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
--
-- * 'garrsAuthor' - The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
--
-- * 'garrsVersion' - Version information about the application.
--
-- * 'garrsHomePageURL' - A URL with more information about the application, for example the location of your GitHub repository for the application.
--
-- * 'garrsName' - The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
--
-- * 'garrsIsVerifiedAuthor' - Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
--
-- * 'garrsReadmeURL' - A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
--
-- * 'garrsDescription' - The description of the application. Minimum length=1. Maximum length=256
--
-- * 'garrsResponseStatus' - -- | The response status code.
getApplicationResponse ::
  -- | 'garrsResponseStatus'
  Int ->
  GetApplicationResponse
getApplicationResponse pResponseStatus_ =
  GetApplicationResponse'
    { _garrsApplicationId =
        Nothing,
      _garrsCreationTime = Nothing,
      _garrsSpdxLicenseId = Nothing,
      _garrsLicenseURL = Nothing,
      _garrsVerifiedAuthorURL = Nothing,
      _garrsLabels = Nothing,
      _garrsAuthor = Nothing,
      _garrsVersion = Nothing,
      _garrsHomePageURL = Nothing,
      _garrsName = Nothing,
      _garrsIsVerifiedAuthor = Nothing,
      _garrsReadmeURL = Nothing,
      _garrsDescription = Nothing,
      _garrsResponseStatus = pResponseStatus_
    }

-- | The application Amazon Resource Name (ARN).
garrsApplicationId :: Lens' GetApplicationResponse (Maybe Text)
garrsApplicationId = lens _garrsApplicationId (\s a -> s {_garrsApplicationId = a})

-- | The date and time this resource was created.
garrsCreationTime :: Lens' GetApplicationResponse (Maybe Text)
garrsCreationTime = lens _garrsCreationTime (\s a -> s {_garrsCreationTime = a})

-- | A valid identifier from https://spdx.org/licenses/.
garrsSpdxLicenseId :: Lens' GetApplicationResponse (Maybe Text)
garrsSpdxLicenseId = lens _garrsSpdxLicenseId (\s a -> s {_garrsSpdxLicenseId = a})

-- | A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
garrsLicenseURL :: Lens' GetApplicationResponse (Maybe Text)
garrsLicenseURL = lens _garrsLicenseURL (\s a -> s {_garrsLicenseURL = a})

-- | The URL to the public profile of a verified author. This URL is submitted by the author.
garrsVerifiedAuthorURL :: Lens' GetApplicationResponse (Maybe Text)
garrsVerifiedAuthorURL = lens _garrsVerifiedAuthorURL (\s a -> s {_garrsVerifiedAuthorURL = a})

-- | Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
garrsLabels :: Lens' GetApplicationResponse [Text]
garrsLabels = lens _garrsLabels (\s a -> s {_garrsLabels = a}) . _Default . _Coerce

-- | The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
garrsAuthor :: Lens' GetApplicationResponse (Maybe Text)
garrsAuthor = lens _garrsAuthor (\s a -> s {_garrsAuthor = a})

-- | Version information about the application.
garrsVersion :: Lens' GetApplicationResponse (Maybe Version)
garrsVersion = lens _garrsVersion (\s a -> s {_garrsVersion = a})

-- | A URL with more information about the application, for example the location of your GitHub repository for the application.
garrsHomePageURL :: Lens' GetApplicationResponse (Maybe Text)
garrsHomePageURL = lens _garrsHomePageURL (\s a -> s {_garrsHomePageURL = a})

-- | The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
garrsName :: Lens' GetApplicationResponse (Maybe Text)
garrsName = lens _garrsName (\s a -> s {_garrsName = a})

-- | Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
garrsIsVerifiedAuthor :: Lens' GetApplicationResponse (Maybe Bool)
garrsIsVerifiedAuthor = lens _garrsIsVerifiedAuthor (\s a -> s {_garrsIsVerifiedAuthor = a})

-- | A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
garrsReadmeURL :: Lens' GetApplicationResponse (Maybe Text)
garrsReadmeURL = lens _garrsReadmeURL (\s a -> s {_garrsReadmeURL = a})

-- | The description of the application. Minimum length=1. Maximum length=256
garrsDescription :: Lens' GetApplicationResponse (Maybe Text)
garrsDescription = lens _garrsDescription (\s a -> s {_garrsDescription = a})

-- | -- | The response status code.
garrsResponseStatus :: Lens' GetApplicationResponse Int
garrsResponseStatus = lens _garrsResponseStatus (\s a -> s {_garrsResponseStatus = a})

instance NFData GetApplicationResponse
