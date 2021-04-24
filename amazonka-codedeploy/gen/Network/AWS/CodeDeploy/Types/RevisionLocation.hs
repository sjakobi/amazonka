{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.RevisionLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.RevisionLocation where

import Network.AWS.CodeDeploy.Types.AppSpecContent
import Network.AWS.CodeDeploy.Types.GitHubLocation
import Network.AWS.CodeDeploy.Types.RawString
import Network.AWS.CodeDeploy.Types.RevisionLocationType
import Network.AWS.CodeDeploy.Types.S3Location
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the location of an application revision.
--
--
--
-- /See:/ 'revisionLocation' smart constructor.
data RevisionLocation = RevisionLocation'
  { _rlRevisionType ::
      !(Maybe RevisionLocationType),
    _rlS3Location :: !(Maybe S3Location),
    _rlAppSpecContent ::
      !(Maybe AppSpecContent),
    _rlGitHubLocation ::
      !(Maybe GitHubLocation),
    _rlString :: !(Maybe RawString)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RevisionLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlRevisionType' - The type of application revision:     * S3: An application revision stored in Amazon S3.     * GitHub: An application revision stored in GitHub (EC2/On-premises deployments only).     * String: A YAML-formatted or JSON-formatted string (AWS Lambda deployments only).     * AppSpecContent: An @AppSpecContent@ object that contains the contents of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML stored as a RawString.
--
-- * 'rlS3Location' - Information about the location of a revision stored in Amazon S3.
--
-- * 'rlAppSpecContent' - The content of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML and stored as a RawString.
--
-- * 'rlGitHubLocation' - Information about the location of application artifacts stored in GitHub.
--
-- * 'rlString' - Information about the location of an AWS Lambda deployment revision stored as a RawString.
revisionLocation ::
  RevisionLocation
revisionLocation =
  RevisionLocation'
    { _rlRevisionType = Nothing,
      _rlS3Location = Nothing,
      _rlAppSpecContent = Nothing,
      _rlGitHubLocation = Nothing,
      _rlString = Nothing
    }

-- | The type of application revision:     * S3: An application revision stored in Amazon S3.     * GitHub: An application revision stored in GitHub (EC2/On-premises deployments only).     * String: A YAML-formatted or JSON-formatted string (AWS Lambda deployments only).     * AppSpecContent: An @AppSpecContent@ object that contains the contents of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML stored as a RawString.
rlRevisionType :: Lens' RevisionLocation (Maybe RevisionLocationType)
rlRevisionType = lens _rlRevisionType (\s a -> s {_rlRevisionType = a})

-- | Information about the location of a revision stored in Amazon S3.
rlS3Location :: Lens' RevisionLocation (Maybe S3Location)
rlS3Location = lens _rlS3Location (\s a -> s {_rlS3Location = a})

-- | The content of an AppSpec file for an AWS Lambda or Amazon ECS deployment. The content is formatted as JSON or YAML and stored as a RawString.
rlAppSpecContent :: Lens' RevisionLocation (Maybe AppSpecContent)
rlAppSpecContent = lens _rlAppSpecContent (\s a -> s {_rlAppSpecContent = a})

-- | Information about the location of application artifacts stored in GitHub.
rlGitHubLocation :: Lens' RevisionLocation (Maybe GitHubLocation)
rlGitHubLocation = lens _rlGitHubLocation (\s a -> s {_rlGitHubLocation = a})

-- | Information about the location of an AWS Lambda deployment revision stored as a RawString.
rlString :: Lens' RevisionLocation (Maybe RawString)
rlString = lens _rlString (\s a -> s {_rlString = a})

instance FromJSON RevisionLocation where
  parseJSON =
    withObject
      "RevisionLocation"
      ( \x ->
          RevisionLocation'
            <$> (x .:? "revisionType")
            <*> (x .:? "s3Location")
            <*> (x .:? "appSpecContent")
            <*> (x .:? "gitHubLocation")
            <*> (x .:? "string")
      )

instance Hashable RevisionLocation

instance NFData RevisionLocation

instance ToJSON RevisionLocation where
  toJSON RevisionLocation' {..} =
    object
      ( catMaybes
          [ ("revisionType" .=) <$> _rlRevisionType,
            ("s3Location" .=) <$> _rlS3Location,
            ("appSpecContent" .=) <$> _rlAppSpecContent,
            ("gitHubLocation" .=) <$> _rlGitHubLocation,
            ("string" .=) <$> _rlString
          ]
      )
