{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.FunctionCodeLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionCodeLocation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about a function's deployment package.
--
--
--
-- /See:/ 'functionCodeLocation' smart constructor.
data FunctionCodeLocation = FunctionCodeLocation'
  { _fclImageURI ::
      !(Maybe Text),
    _fclResolvedImageURI ::
      !(Maybe Text),
    _fclLocation :: !(Maybe Text),
    _fclRepositoryType ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FunctionCodeLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fclImageURI' - URI of a container image in the Amazon ECR registry.
--
-- * 'fclResolvedImageURI' - The resolved URI for the image.
--
-- * 'fclLocation' - A presigned URL that you can use to download the deployment package.
--
-- * 'fclRepositoryType' - The service that's hosting the file.
functionCodeLocation ::
  FunctionCodeLocation
functionCodeLocation =
  FunctionCodeLocation'
    { _fclImageURI = Nothing,
      _fclResolvedImageURI = Nothing,
      _fclLocation = Nothing,
      _fclRepositoryType = Nothing
    }

-- | URI of a container image in the Amazon ECR registry.
fclImageURI :: Lens' FunctionCodeLocation (Maybe Text)
fclImageURI = lens _fclImageURI (\s a -> s {_fclImageURI = a})

-- | The resolved URI for the image.
fclResolvedImageURI :: Lens' FunctionCodeLocation (Maybe Text)
fclResolvedImageURI = lens _fclResolvedImageURI (\s a -> s {_fclResolvedImageURI = a})

-- | A presigned URL that you can use to download the deployment package.
fclLocation :: Lens' FunctionCodeLocation (Maybe Text)
fclLocation = lens _fclLocation (\s a -> s {_fclLocation = a})

-- | The service that's hosting the file.
fclRepositoryType :: Lens' FunctionCodeLocation (Maybe Text)
fclRepositoryType = lens _fclRepositoryType (\s a -> s {_fclRepositoryType = a})

instance FromJSON FunctionCodeLocation where
  parseJSON =
    withObject
      "FunctionCodeLocation"
      ( \x ->
          FunctionCodeLocation'
            <$> (x .:? "ImageUri")
            <*> (x .:? "ResolvedImageUri")
            <*> (x .:? "Location")
            <*> (x .:? "RepositoryType")
      )

instance Hashable FunctionCodeLocation

instance NFData FunctionCodeLocation
