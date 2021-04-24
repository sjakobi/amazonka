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
-- Module      : Network.AWS.ElasticSearch.DissociatePackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Dissociates a package from the Amazon ES domain.
module Network.AWS.ElasticSearch.DissociatePackage
  ( -- * Creating a Request
    dissociatePackage,
    DissociatePackage,

    -- * Request Lenses
    disPackageId,
    disDomainName,

    -- * Destructuring the Response
    dissociatePackageResponse,
    DissociatePackageResponse,

    -- * Response Lenses
    dprrsDomainPackageDetails,
    dprrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'DissociatePackage' @ operation.
--
--
--
-- /See:/ 'dissociatePackage' smart constructor.
data DissociatePackage = DissociatePackage'
  { _disPackageId ::
      !Text,
    _disDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DissociatePackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disPackageId' - Internal ID of the package that you want to associate with a domain. Use @DescribePackages@ to find this value.
--
-- * 'disDomainName' - Name of the domain that you want to associate the package with.
dissociatePackage ::
  -- | 'disPackageId'
  Text ->
  -- | 'disDomainName'
  Text ->
  DissociatePackage
dissociatePackage pPackageId_ pDomainName_ =
  DissociatePackage'
    { _disPackageId = pPackageId_,
      _disDomainName = pDomainName_
    }

-- | Internal ID of the package that you want to associate with a domain. Use @DescribePackages@ to find this value.
disPackageId :: Lens' DissociatePackage Text
disPackageId = lens _disPackageId (\s a -> s {_disPackageId = a})

-- | Name of the domain that you want to associate the package with.
disDomainName :: Lens' DissociatePackage Text
disDomainName = lens _disDomainName (\s a -> s {_disDomainName = a})

instance AWSRequest DissociatePackage where
  type Rs DissociatePackage = DissociatePackageResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DissociatePackageResponse'
            <$> (x .?> "DomainPackageDetails")
            <*> (pure (fromEnum s))
      )

instance Hashable DissociatePackage

instance NFData DissociatePackage

instance ToHeaders DissociatePackage where
  toHeaders = const mempty

instance ToJSON DissociatePackage where
  toJSON = const (Object mempty)

instance ToPath DissociatePackage where
  toPath DissociatePackage' {..} =
    mconcat
      [ "/2015-01-01/packages/dissociate/",
        toBS _disPackageId,
        "/",
        toBS _disDomainName
      ]

instance ToQuery DissociatePackage where
  toQuery = const mempty

-- | Container for response returned by @'DissociatePackage' @ operation.
--
--
--
-- /See:/ 'dissociatePackageResponse' smart constructor.
data DissociatePackageResponse = DissociatePackageResponse'
  { _dprrsDomainPackageDetails ::
      !( Maybe
           DomainPackageDetails
       ),
    _dprrsResponseStatus ::
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

-- | Creates a value of 'DissociatePackageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsDomainPackageDetails' - @DomainPackageDetails@
--
-- * 'dprrsResponseStatus' - -- | The response status code.
dissociatePackageResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DissociatePackageResponse
dissociatePackageResponse pResponseStatus_ =
  DissociatePackageResponse'
    { _dprrsDomainPackageDetails =
        Nothing,
      _dprrsResponseStatus = pResponseStatus_
    }

-- | @DomainPackageDetails@
dprrsDomainPackageDetails :: Lens' DissociatePackageResponse (Maybe DomainPackageDetails)
dprrsDomainPackageDetails = lens _dprrsDomainPackageDetails (\s a -> s {_dprrsDomainPackageDetails = a})

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DissociatePackageResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DissociatePackageResponse
