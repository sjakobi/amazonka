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
-- Module      : Network.AWS.ServerlessApplicationRepository.CreateApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
module Network.AWS.ServerlessApplicationRepository.CreateApplication
  ( -- * Creating a Request
    createApplication,
    CreateApplication,

    -- * Request Lenses
    caSpdxLicenseId,
    caTemplateURL,
    caLicenseBody,
    caLicenseURL,
    caLabels,
    caReadmeBody,
    caHomePageURL,
    caSourceCodeArchiveURL,
    caReadmeURL,
    caSourceCodeURL,
    caSemanticVersion,
    caTemplateBody,
    caDescription,
    caName,
    caAuthor,

    -- * Destructuring the Response
    createApplicationResponse,
    CreateApplicationResponse,

    -- * Response Lenses
    carrsApplicationId,
    carrsCreationTime,
    carrsSpdxLicenseId,
    carrsLicenseURL,
    carrsVerifiedAuthorURL,
    carrsLabels,
    carrsAuthor,
    carrsVersion,
    carrsHomePageURL,
    carrsName,
    carrsIsVerifiedAuthor,
    carrsReadmeURL,
    carrsDescription,
    carrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'createApplication' smart constructor.
data CreateApplication = CreateApplication'
  { _caSpdxLicenseId ::
      !(Maybe Text),
    _caTemplateURL :: !(Maybe Text),
    _caLicenseBody :: !(Maybe Text),
    _caLicenseURL :: !(Maybe Text),
    _caLabels :: !(Maybe [Text]),
    _caReadmeBody :: !(Maybe Text),
    _caHomePageURL :: !(Maybe Text),
    _caSourceCodeArchiveURL ::
      !(Maybe Text),
    _caReadmeURL :: !(Maybe Text),
    _caSourceCodeURL :: !(Maybe Text),
    _caSemanticVersion :: !(Maybe Text),
    _caTemplateBody :: !(Maybe Text),
    _caDescription :: !Text,
    _caName :: !Text,
    _caAuthor :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caSpdxLicenseId' - A valid identifier from <https://spdx.org/licenses/ https://spdx.org/licenses/> .
--
-- * 'caTemplateURL' - A link to the S3 object containing the packaged AWS SAM template of your application. You can specify only one of templateBody and templateUrl; otherwise an error results.
--
-- * 'caLicenseBody' - A local text file that contains the license of the app that matches the spdxLicenseID value of your application.  The file has the format file://<path>/<filename>. Maximum size 5 MB You can specify only one of licenseBody and licenseUrl; otherwise, an error results.
--
-- * 'caLicenseURL' - A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB You can specify only one of licenseBody and licenseUrl; otherwise, an error results.
--
-- * 'caLabels' - Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
--
-- * 'caReadmeBody' - A local text readme file in Markdown language that contains a more detailed description of the application and how it works.  The file has the format file://<path>/<filename>. Maximum size 5 MB You can specify only one of readmeBody and readmeUrl; otherwise, an error results.
--
-- * 'caHomePageURL' - A URL with more information about the application, for example the location of your GitHub repository for the application.
--
-- * 'caSourceCodeArchiveURL' - A link to the S3 object that contains the ZIP archive of the source code for this version of your application. Maximum size 50 MB
--
-- * 'caReadmeURL' - A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB You can specify only one of readmeBody and readmeUrl; otherwise, an error results.
--
-- * 'caSourceCodeURL' - A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.
--
-- * 'caSemanticVersion' - The semantic version of the application: <https://semver.org/ https://semver.org/>
--
-- * 'caTemplateBody' - The local raw packaged AWS SAM template file of your application.  The file has the format file://<path>/<filename>. You can specify only one of templateBody and templateUrl; otherwise an error results.
--
-- * 'caDescription' - The description of the application. Minimum length=1. Maximum length=256
--
-- * 'caName' - The name of the application that you want to publish. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
--
-- * 'caAuthor' - The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
createApplication ::
  -- | 'caDescription'
  Text ->
  -- | 'caName'
  Text ->
  -- | 'caAuthor'
  Text ->
  CreateApplication
createApplication pDescription_ pName_ pAuthor_ =
  CreateApplication'
    { _caSpdxLicenseId = Nothing,
      _caTemplateURL = Nothing,
      _caLicenseBody = Nothing,
      _caLicenseURL = Nothing,
      _caLabels = Nothing,
      _caReadmeBody = Nothing,
      _caHomePageURL = Nothing,
      _caSourceCodeArchiveURL = Nothing,
      _caReadmeURL = Nothing,
      _caSourceCodeURL = Nothing,
      _caSemanticVersion = Nothing,
      _caTemplateBody = Nothing,
      _caDescription = pDescription_,
      _caName = pName_,
      _caAuthor = pAuthor_
    }

-- | A valid identifier from <https://spdx.org/licenses/ https://spdx.org/licenses/> .
caSpdxLicenseId :: Lens' CreateApplication (Maybe Text)
caSpdxLicenseId = lens _caSpdxLicenseId (\s a -> s {_caSpdxLicenseId = a})

-- | A link to the S3 object containing the packaged AWS SAM template of your application. You can specify only one of templateBody and templateUrl; otherwise an error results.
caTemplateURL :: Lens' CreateApplication (Maybe Text)
caTemplateURL = lens _caTemplateURL (\s a -> s {_caTemplateURL = a})

-- | A local text file that contains the license of the app that matches the spdxLicenseID value of your application.  The file has the format file://<path>/<filename>. Maximum size 5 MB You can specify only one of licenseBody and licenseUrl; otherwise, an error results.
caLicenseBody :: Lens' CreateApplication (Maybe Text)
caLicenseBody = lens _caLicenseBody (\s a -> s {_caLicenseBody = a})

-- | A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB You can specify only one of licenseBody and licenseUrl; otherwise, an error results.
caLicenseURL :: Lens' CreateApplication (Maybe Text)
caLicenseURL = lens _caLicenseURL (\s a -> s {_caLicenseURL = a})

-- | Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
caLabels :: Lens' CreateApplication [Text]
caLabels = lens _caLabels (\s a -> s {_caLabels = a}) . _Default . _Coerce

-- | A local text readme file in Markdown language that contains a more detailed description of the application and how it works.  The file has the format file://<path>/<filename>. Maximum size 5 MB You can specify only one of readmeBody and readmeUrl; otherwise, an error results.
caReadmeBody :: Lens' CreateApplication (Maybe Text)
caReadmeBody = lens _caReadmeBody (\s a -> s {_caReadmeBody = a})

-- | A URL with more information about the application, for example the location of your GitHub repository for the application.
caHomePageURL :: Lens' CreateApplication (Maybe Text)
caHomePageURL = lens _caHomePageURL (\s a -> s {_caHomePageURL = a})

-- | A link to the S3 object that contains the ZIP archive of the source code for this version of your application. Maximum size 50 MB
caSourceCodeArchiveURL :: Lens' CreateApplication (Maybe Text)
caSourceCodeArchiveURL = lens _caSourceCodeArchiveURL (\s a -> s {_caSourceCodeArchiveURL = a})

-- | A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB You can specify only one of readmeBody and readmeUrl; otherwise, an error results.
caReadmeURL :: Lens' CreateApplication (Maybe Text)
caReadmeURL = lens _caReadmeURL (\s a -> s {_caReadmeURL = a})

-- | A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.
caSourceCodeURL :: Lens' CreateApplication (Maybe Text)
caSourceCodeURL = lens _caSourceCodeURL (\s a -> s {_caSourceCodeURL = a})

-- | The semantic version of the application: <https://semver.org/ https://semver.org/>
caSemanticVersion :: Lens' CreateApplication (Maybe Text)
caSemanticVersion = lens _caSemanticVersion (\s a -> s {_caSemanticVersion = a})

-- | The local raw packaged AWS SAM template file of your application.  The file has the format file://<path>/<filename>. You can specify only one of templateBody and templateUrl; otherwise an error results.
caTemplateBody :: Lens' CreateApplication (Maybe Text)
caTemplateBody = lens _caTemplateBody (\s a -> s {_caTemplateBody = a})

-- | The description of the application. Minimum length=1. Maximum length=256
caDescription :: Lens' CreateApplication Text
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | The name of the application that you want to publish. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
caName :: Lens' CreateApplication Text
caName = lens _caName (\s a -> s {_caName = a})

-- | The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
caAuthor :: Lens' CreateApplication Text
caAuthor = lens _caAuthor (\s a -> s {_caAuthor = a})

instance AWSRequest CreateApplication where
  type Rs CreateApplication = CreateApplicationResponse
  request = postJSON serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          CreateApplicationResponse'
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

instance Hashable CreateApplication

instance NFData CreateApplication

instance ToHeaders CreateApplication where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApplication where
  toJSON CreateApplication' {..} =
    object
      ( catMaybes
          [ ("spdxLicenseId" .=) <$> _caSpdxLicenseId,
            ("templateUrl" .=) <$> _caTemplateURL,
            ("licenseBody" .=) <$> _caLicenseBody,
            ("licenseUrl" .=) <$> _caLicenseURL,
            ("labels" .=) <$> _caLabels,
            ("readmeBody" .=) <$> _caReadmeBody,
            ("homePageUrl" .=) <$> _caHomePageURL,
            ("sourceCodeArchiveUrl" .=)
              <$> _caSourceCodeArchiveURL,
            ("readmeUrl" .=) <$> _caReadmeURL,
            ("sourceCodeUrl" .=) <$> _caSourceCodeURL,
            ("semanticVersion" .=) <$> _caSemanticVersion,
            ("templateBody" .=) <$> _caTemplateBody,
            Just ("description" .= _caDescription),
            Just ("name" .= _caName),
            Just ("author" .= _caAuthor)
          ]
      )

instance ToPath CreateApplication where
  toPath = const "/applications"

instance ToQuery CreateApplication where
  toQuery = const mempty

-- | /See:/ 'createApplicationResponse' smart constructor.
data CreateApplicationResponse = CreateApplicationResponse'
  { _carrsApplicationId ::
      !(Maybe Text),
    _carrsCreationTime ::
      !(Maybe Text),
    _carrsSpdxLicenseId ::
      !(Maybe Text),
    _carrsLicenseURL ::
      !(Maybe Text),
    _carrsVerifiedAuthorURL ::
      !(Maybe Text),
    _carrsLabels ::
      !(Maybe [Text]),
    _carrsAuthor ::
      !(Maybe Text),
    _carrsVersion ::
      !(Maybe Version),
    _carrsHomePageURL ::
      !(Maybe Text),
    _carrsName ::
      !(Maybe Text),
    _carrsIsVerifiedAuthor ::
      !(Maybe Bool),
    _carrsReadmeURL ::
      !(Maybe Text),
    _carrsDescription ::
      !(Maybe Text),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CreateApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'carrsCreationTime' - The date and time this resource was created.
--
-- * 'carrsSpdxLicenseId' - A valid identifier from https://spdx.org/licenses/.
--
-- * 'carrsLicenseURL' - A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
--
-- * 'carrsVerifiedAuthorURL' - The URL to the public profile of a verified author. This URL is submitted by the author.
--
-- * 'carrsLabels' - Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
--
-- * 'carrsAuthor' - The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
--
-- * 'carrsVersion' - Version information about the application.
--
-- * 'carrsHomePageURL' - A URL with more information about the application, for example the location of your GitHub repository for the application.
--
-- * 'carrsName' - The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
--
-- * 'carrsIsVerifiedAuthor' - Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
--
-- * 'carrsReadmeURL' - A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
--
-- * 'carrsDescription' - The description of the application. Minimum length=1. Maximum length=256
--
-- * 'carrsResponseStatus' - -- | The response status code.
createApplicationResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateApplicationResponse
createApplicationResponse pResponseStatus_ =
  CreateApplicationResponse'
    { _carrsApplicationId =
        Nothing,
      _carrsCreationTime = Nothing,
      _carrsSpdxLicenseId = Nothing,
      _carrsLicenseURL = Nothing,
      _carrsVerifiedAuthorURL = Nothing,
      _carrsLabels = Nothing,
      _carrsAuthor = Nothing,
      _carrsVersion = Nothing,
      _carrsHomePageURL = Nothing,
      _carrsName = Nothing,
      _carrsIsVerifiedAuthor = Nothing,
      _carrsReadmeURL = Nothing,
      _carrsDescription = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | The application Amazon Resource Name (ARN).
carrsApplicationId :: Lens' CreateApplicationResponse (Maybe Text)
carrsApplicationId = lens _carrsApplicationId (\s a -> s {_carrsApplicationId = a})

-- | The date and time this resource was created.
carrsCreationTime :: Lens' CreateApplicationResponse (Maybe Text)
carrsCreationTime = lens _carrsCreationTime (\s a -> s {_carrsCreationTime = a})

-- | A valid identifier from https://spdx.org/licenses/.
carrsSpdxLicenseId :: Lens' CreateApplicationResponse (Maybe Text)
carrsSpdxLicenseId = lens _carrsSpdxLicenseId (\s a -> s {_carrsSpdxLicenseId = a})

-- | A link to a license file of the app that matches the spdxLicenseID value of your application. Maximum size 5 MB
carrsLicenseURL :: Lens' CreateApplicationResponse (Maybe Text)
carrsLicenseURL = lens _carrsLicenseURL (\s a -> s {_carrsLicenseURL = a})

-- | The URL to the public profile of a verified author. This URL is submitted by the author.
carrsVerifiedAuthorURL :: Lens' CreateApplicationResponse (Maybe Text)
carrsVerifiedAuthorURL = lens _carrsVerifiedAuthorURL (\s a -> s {_carrsVerifiedAuthorURL = a})

-- | Labels to improve discovery of apps in search results. Minimum length=1. Maximum length=127. Maximum number of labels: 10 Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";
carrsLabels :: Lens' CreateApplicationResponse [Text]
carrsLabels = lens _carrsLabels (\s a -> s {_carrsLabels = a}) . _Default . _Coerce

-- | The name of the author publishing the app. Minimum length=1. Maximum length=127. Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";
carrsAuthor :: Lens' CreateApplicationResponse (Maybe Text)
carrsAuthor = lens _carrsAuthor (\s a -> s {_carrsAuthor = a})

-- | Version information about the application.
carrsVersion :: Lens' CreateApplicationResponse (Maybe Version)
carrsVersion = lens _carrsVersion (\s a -> s {_carrsVersion = a})

-- | A URL with more information about the application, for example the location of your GitHub repository for the application.
carrsHomePageURL :: Lens' CreateApplicationResponse (Maybe Text)
carrsHomePageURL = lens _carrsHomePageURL (\s a -> s {_carrsHomePageURL = a})

-- | The name of the application. Minimum length=1. Maximum length=140 Pattern: "[a-zA-Z0-9\\-]+";
carrsName :: Lens' CreateApplicationResponse (Maybe Text)
carrsName = lens _carrsName (\s a -> s {_carrsName = a})

-- | Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.
carrsIsVerifiedAuthor :: Lens' CreateApplicationResponse (Maybe Bool)
carrsIsVerifiedAuthor = lens _carrsIsVerifiedAuthor (\s a -> s {_carrsIsVerifiedAuthor = a})

-- | A link to the readme file in Markdown language that contains a more detailed description of the application and how it works. Maximum size 5 MB
carrsReadmeURL :: Lens' CreateApplicationResponse (Maybe Text)
carrsReadmeURL = lens _carrsReadmeURL (\s a -> s {_carrsReadmeURL = a})

-- | The description of the application. Minimum length=1. Maximum length=256
carrsDescription :: Lens' CreateApplicationResponse (Maybe Text)
carrsDescription = lens _carrsDescription (\s a -> s {_carrsDescription = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateApplicationResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateApplicationResponse
