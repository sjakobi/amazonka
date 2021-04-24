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
-- Module      : Network.AWS.ElasticSearch.DeletePackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the package.
module Network.AWS.ElasticSearch.DeletePackage
  ( -- * Creating a Request
    deletePackage,
    DeletePackage,

    -- * Request Lenses
    dpPackageId,

    -- * Destructuring the Response
    deletePackageResponse,
    DeletePackageResponse,

    -- * Response Lenses
    dprprsPackageDetails,
    dprprsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'DeletePackage' @ operation.
--
--
--
-- /See:/ 'deletePackage' smart constructor.
newtype DeletePackage = DeletePackage'
  { _dpPackageId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeletePackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpPackageId' - Internal ID of the package that you want to delete. Use @DescribePackages@ to find this value.
deletePackage ::
  -- | 'dpPackageId'
  Text ->
  DeletePackage
deletePackage pPackageId_ =
  DeletePackage' {_dpPackageId = pPackageId_}

-- | Internal ID of the package that you want to delete. Use @DescribePackages@ to find this value.
dpPackageId :: Lens' DeletePackage Text
dpPackageId = lens _dpPackageId (\s a -> s {_dpPackageId = a})

instance AWSRequest DeletePackage where
  type Rs DeletePackage = DeletePackageResponse
  request = delete elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DeletePackageResponse'
            <$> (x .?> "PackageDetails") <*> (pure (fromEnum s))
      )

instance Hashable DeletePackage

instance NFData DeletePackage

instance ToHeaders DeletePackage where
  toHeaders = const mempty

instance ToPath DeletePackage where
  toPath DeletePackage' {..} =
    mconcat
      ["/2015-01-01/packages/", toBS _dpPackageId]

instance ToQuery DeletePackage where
  toQuery = const mempty

-- | Container for response parameters to @'DeletePackage' @ operation.
--
--
--
-- /See:/ 'deletePackageResponse' smart constructor.
data DeletePackageResponse = DeletePackageResponse'
  { _dprprsPackageDetails ::
      !(Maybe PackageDetails),
    _dprprsResponseStatus ::
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

-- | Creates a value of 'DeletePackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprprsPackageDetails' - @PackageDetails@
--
-- * 'dprprsResponseStatus' - -- | The response status code.
deletePackageResponse ::
  -- | 'dprprsResponseStatus'
  Int ->
  DeletePackageResponse
deletePackageResponse pResponseStatus_ =
  DeletePackageResponse'
    { _dprprsPackageDetails =
        Nothing,
      _dprprsResponseStatus = pResponseStatus_
    }

-- | @PackageDetails@
dprprsPackageDetails :: Lens' DeletePackageResponse (Maybe PackageDetails)
dprprsPackageDetails = lens _dprprsPackageDetails (\s a -> s {_dprprsPackageDetails = a})

-- | -- | The response status code.
dprprsResponseStatus :: Lens' DeletePackageResponse Int
dprprsResponseStatus = lens _dprprsResponseStatus (\s a -> s {_dprprsResponseStatus = a})

instance NFData DeletePackageResponse
