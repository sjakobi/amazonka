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
-- Module      : Network.AWS.ServerlessApplicationRepository.UpdateApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified application.
module Network.AWS.ServerlessApplicationRepository.UpdateApplication
  ( -- * Creating a Request
    updateApplication,
    UpdateApplication,

    -- * Request Lenses
    uLabels,
    uAuthor,
    uReadmeBody,
    uHomePageURL,
    uReadmeURL,
    uDescription,
    uApplicationId,

    -- * Destructuring the Response
    updateApplicationResponse,
    UpdateApplicationResponse,

    -- * Response Lenses
    uarrsApplicationId,
    uarrsCreationTime,
    uarrsSpdxLicenseId,
    uarrsLicenseURL,
    uarrsVerifiedAuthorURL,
    uarrsLabels,
    uarrsAuthor,
    uarrsVersion,
    uarrsHomePageURL,
    uarrsName,
    uarrsIsVerifiedAuthor,
    uarrsReadmeURL,
    uarrsDescription,
    uarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'updateApplication' smart constructor.
data UpdateApplication = UpdateApplication'
  { _uLabels ::
      !(Maybe [Text]),
    _uAuthor :: !(Maybe Text),
    _uReadmeBody :: !(Maybe Text),
    _uHomePageURL :: !(Maybe Text),
    _uReadmeURL :: !(Maybe Text),
    _uDescription :: !(Maybe Text),
    _uApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uLabels' - Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
--
-- * 'uAuthor' - The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
--
-- * 'uReadmeBody' - A text readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
--
-- * 'uHomePageURL' - A URL with more information about the application, for example the location of your GitHub repository for the application.
--
-- * 'uReadmeURL' - A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
--
-- * 'uDescription' - The description of the application. Minimum length=1. Maximum length=256
--
-- * 'uApplicationId' - The Amazon Resource Name (ARN) of the application.
updateApplication ::
  -- | 'uApplicationId'
  Text ->
  UpdateApplication
updateApplication pApplicationId_ =
  UpdateApplication'
    { _uLabels = Nothing,
      _uAuthor = Nothing,
      _uReadmeBody = Nothing,
      _uHomePageURL = Nothing,
      _uReadmeURL = Nothing,
      _uDescription = Nothing,
      _uApplicationId = pApplicationId_
    }

-- | Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
uLabels :: Lens' UpdateApplication [Text]
uLabels = lens _uLabels (\s a -> s {_uLabels = a}) . _Default . _Coerce

-- | The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
uAuthor :: Lens' UpdateApplication (Maybe Text)
uAuthor = lens _uAuthor (\s a -> s {_uAuthor = a})

-- | A text readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
uReadmeBody :: Lens' UpdateApplication (Maybe Text)
uReadmeBody = lens _uReadmeBody (\s a -> s {_uReadmeBody = a})

-- | A URL with more information about the application, for example the location of your GitHub repository for the application.
uHomePageURL :: Lens' UpdateApplication (Maybe Text)
uHomePageURL = lens _uHomePageURL (\s a -> s {_uHomePageURL = a})

-- | A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
uReadmeURL :: Lens' UpdateApplication (Maybe Text)
uReadmeURL = lens _uReadmeURL (\s a -> s {_uReadmeURL = a})

-- | The description of the application. Minimum length=1. Maximum length=256
uDescription :: Lens' UpdateApplication (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a})

-- | The Amazon Resource Name (ARN) of the application.
uApplicationId :: Lens' UpdateApplication Text
uApplicationId = lens _uApplicationId (\s a -> s {_uApplicationId = a})

instance AWSRequest UpdateApplication where
  type Rs UpdateApplication = UpdateApplicationResponse
  request = patchJSON serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          UpdateApplicationResponse'
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

instance Hashable UpdateApplication

instance NFData UpdateApplication

instance ToHeaders UpdateApplication where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateApplication where
  toJSON UpdateApplication' {..} =
    object
      ( catMaybes
          [ ("labels" .=) <$> _uLabels,
            ("author" .=) <$> _uAuthor,
            ("readmeBody" .=) <$> _uReadmeBody,
            ("homePageUrl" .=) <$> _uHomePageURL,
            ("readmeUrl" .=) <$> _uReadmeURL,
            ("description" .=) <$> _uDescription
          ]
      )

instance ToPath UpdateApplication where
  toPath UpdateApplication' {..} =
    mconcat ["/applications/", toBS _uApplicationId]

instance ToQuery UpdateApplication where
  toQuery = const mempty

-- | /See:/ 'updateApplicationResponse' smart constructor.
data UpdateApplicationResponse = UpdateApplicationResponse'
  { _uarrsApplicationId ::
      !(Maybe Text),
    _uarrsCreationTime ::
      !(Maybe Text),
    _uarrsSpdxLicenseId ::
      !(Maybe Text),
    _uarrsLicenseURL ::
      !(Maybe Text),
    _uarrsVerifiedAuthorURL ::
      !(Maybe Text),
    _uarrsLabels ::
      !(Maybe [Text]),
    _uarrsAuthor ::
      !(Maybe Text),
    _uarrsVersion ::
      !(Maybe Version),
    _uarrsHomePageURL ::
      !(Maybe Text),
    _uarrsName ::
      !(Maybe Text),
    _uarrsIsVerifiedAuthor ::
      !(Maybe Bool),
    _uarrsReadmeURL ::
      !(Maybe Text),
    _uarrsDescription ::
      !(Maybe Text),
    _uarrsResponseStatus ::
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

-- | Creates a value of 'UpdateApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarrsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'uarrsCreationTime' - The date and time this resource was created.
--
-- * 'uarrsSpdxLicenseId' - A valid identifier from https://spdx.org/licenses/.
--
-- * 'uarrsLicenseURL' - A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
--
-- * 'uarrsVerifiedAuthorURL' - The URL to the public profile of a verified author. This URL is submitted by the author.
--
-- * 'uarrsLabels' - Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
--
-- * 'uarrsAuthor' - The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
--
-- * 'uarrsVersion' - Version information about the application.
--
-- * 'uarrsHomePageURL' - A URL with more information about the application, for example the location of your GitHub repository for the application.
--
-- * 'uarrsName' - The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
--
-- * 'uarrsIsVerifiedAuthor' - Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
--
-- * 'uarrsReadmeURL' - A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
--
-- * 'uarrsDescription' - The description of the application. Minimum length=1. Maximum length=256
--
-- * 'uarrsResponseStatus' - -- | The response status code.
updateApplicationResponse ::
  -- | 'uarrsResponseStatus'
  Int ->
  UpdateApplicationResponse
updateApplicationResponse pResponseStatus_ =
  UpdateApplicationResponse'
    { _uarrsApplicationId =
        Nothing,
      _uarrsCreationTime = Nothing,
      _uarrsSpdxLicenseId = Nothing,
      _uarrsLicenseURL = Nothing,
      _uarrsVerifiedAuthorURL = Nothing,
      _uarrsLabels = Nothing,
      _uarrsAuthor = Nothing,
      _uarrsVersion = Nothing,
      _uarrsHomePageURL = Nothing,
      _uarrsName = Nothing,
      _uarrsIsVerifiedAuthor = Nothing,
      _uarrsReadmeURL = Nothing,
      _uarrsDescription = Nothing,
      _uarrsResponseStatus = pResponseStatus_
    }

-- | The application Amazon Resource Name (ARN).
uarrsApplicationId :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsApplicationId = lens _uarrsApplicationId (\s a -> s {_uarrsApplicationId = a})

-- | The date and time this resource was created.
uarrsCreationTime :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsCreationTime = lens _uarrsCreationTime (\s a -> s {_uarrsCreationTime = a})

-- | A valid identifier from https://spdx.org/licenses/.
uarrsSpdxLicenseId :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsSpdxLicenseId = lens _uarrsSpdxLicenseId (\s a -> s {_uarrsSpdxLicenseId = a})

-- | A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
uarrsLicenseURL :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsLicenseURL = lens _uarrsLicenseURL (\s a -> s {_uarrsLicenseURL = a})

-- | The URL to the public profile of a verified author. This URL is submitted by the author.
uarrsVerifiedAuthorURL :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsVerifiedAuthorURL = lens _uarrsVerifiedAuthorURL (\s a -> s {_uarrsVerifiedAuthorURL = a})

-- | Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
uarrsLabels :: Lens' UpdateApplicationResponse [Text]
uarrsLabels = lens _uarrsLabels (\s a -> s {_uarrsLabels = a}) . _Default . _Coerce

-- | The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
uarrsAuthor :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsAuthor = lens _uarrsAuthor (\s a -> s {_uarrsAuthor = a})

-- | Version information about the application.
uarrsVersion :: Lens' UpdateApplicationResponse (Maybe Version)
uarrsVersion = lens _uarrsVersion (\s a -> s {_uarrsVersion = a})

-- | A URL with more information about the application, for example the location of your GitHub repository for the application.
uarrsHomePageURL :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsHomePageURL = lens _uarrsHomePageURL (\s a -> s {_uarrsHomePageURL = a})

-- | The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
uarrsName :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsName = lens _uarrsName (\s a -> s {_uarrsName = a})

-- | Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
uarrsIsVerifiedAuthor :: Lens' UpdateApplicationResponse (Maybe Bool)
uarrsIsVerifiedAuthor = lens _uarrsIsVerifiedAuthor (\s a -> s {_uarrsIsVerifiedAuthor = a})

-- | A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
uarrsReadmeURL :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsReadmeURL = lens _uarrsReadmeURL (\s a -> s {_uarrsReadmeURL = a})

-- | The description of the application. Minimum length=1. Maximum length=256
uarrsDescription :: Lens' UpdateApplicationResponse (Maybe Text)
uarrsDescription = lens _uarrsDescription (\s a -> s {_uarrsDescription = a})

-- | -- | The response status code.
uarrsResponseStatus :: Lens' UpdateApplicationResponse Int
uarrsResponseStatus = lens _uarrsResponseStatus (\s a -> s {_uarrsResponseStatus = a})

instance NFData UpdateApplicationResponse
