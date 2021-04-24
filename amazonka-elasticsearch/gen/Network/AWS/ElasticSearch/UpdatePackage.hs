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
-- Module      : Network.AWS.ElasticSearch.UpdatePackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a package for use with Amazon ES domains.
module Network.AWS.ElasticSearch.UpdatePackage
  ( -- * Creating a Request
    updatePackage,
    UpdatePackage,

    -- * Request Lenses
    upCommitMessage,
    upPackageDescription,
    upPackageId,
    upPackageSource,

    -- * Destructuring the Response
    updatePackageResponse,
    UpdatePackageResponse,

    -- * Response Lenses
    uprrsPackageDetails,
    uprrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'UpdatePackage' @ operation.
--
--
--
-- /See:/ 'updatePackage' smart constructor.
data UpdatePackage = UpdatePackage'
  { _upCommitMessage ::
      !(Maybe Text),
    _upPackageDescription :: !(Maybe Text),
    _upPackageId :: !Text,
    _upPackageSource :: !PackageSource
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upCommitMessage' - An info message for the new version which will be shown as part of @GetPackageVersionHistoryResponse@ .
--
-- * 'upPackageDescription' - New description of the package.
--
-- * 'upPackageId' - Unique identifier for the package.
--
-- * 'upPackageSource' - Undocumented member.
updatePackage ::
  -- | 'upPackageId'
  Text ->
  -- | 'upPackageSource'
  PackageSource ->
  UpdatePackage
updatePackage pPackageId_ pPackageSource_ =
  UpdatePackage'
    { _upCommitMessage = Nothing,
      _upPackageDescription = Nothing,
      _upPackageId = pPackageId_,
      _upPackageSource = pPackageSource_
    }

-- | An info message for the new version which will be shown as part of @GetPackageVersionHistoryResponse@ .
upCommitMessage :: Lens' UpdatePackage (Maybe Text)
upCommitMessage = lens _upCommitMessage (\s a -> s {_upCommitMessage = a})

-- | New description of the package.
upPackageDescription :: Lens' UpdatePackage (Maybe Text)
upPackageDescription = lens _upPackageDescription (\s a -> s {_upPackageDescription = a})

-- | Unique identifier for the package.
upPackageId :: Lens' UpdatePackage Text
upPackageId = lens _upPackageId (\s a -> s {_upPackageId = a})

-- | Undocumented member.
upPackageSource :: Lens' UpdatePackage PackageSource
upPackageSource = lens _upPackageSource (\s a -> s {_upPackageSource = a})

instance AWSRequest UpdatePackage where
  type Rs UpdatePackage = UpdatePackageResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          UpdatePackageResponse'
            <$> (x .?> "PackageDetails") <*> (pure (fromEnum s))
      )

instance Hashable UpdatePackage

instance NFData UpdatePackage

instance ToHeaders UpdatePackage where
  toHeaders = const mempty

instance ToJSON UpdatePackage where
  toJSON UpdatePackage' {..} =
    object
      ( catMaybes
          [ ("CommitMessage" .=) <$> _upCommitMessage,
            ("PackageDescription" .=) <$> _upPackageDescription,
            Just ("PackageID" .= _upPackageId),
            Just ("PackageSource" .= _upPackageSource)
          ]
      )

instance ToPath UpdatePackage where
  toPath = const "/2015-01-01/packages/update"

instance ToQuery UpdatePackage where
  toQuery = const mempty

-- | Container for response returned by @'UpdatePackage' @ operation.
--
--
--
-- /See:/ 'updatePackageResponse' smart constructor.
data UpdatePackageResponse = UpdatePackageResponse'
  { _uprrsPackageDetails ::
      !(Maybe PackageDetails),
    _uprrsResponseStatus ::
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

-- | Creates a value of 'UpdatePackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsPackageDetails' - Information about the package @PackageDetails@ .
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updatePackageResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdatePackageResponse
updatePackageResponse pResponseStatus_ =
  UpdatePackageResponse'
    { _uprrsPackageDetails =
        Nothing,
      _uprrsResponseStatus = pResponseStatus_
    }

-- | Information about the package @PackageDetails@ .
uprrsPackageDetails :: Lens' UpdatePackageResponse (Maybe PackageDetails)
uprrsPackageDetails = lens _uprrsPackageDetails (\s a -> s {_uprrsPackageDetails = a})

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdatePackageResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdatePackageResponse
