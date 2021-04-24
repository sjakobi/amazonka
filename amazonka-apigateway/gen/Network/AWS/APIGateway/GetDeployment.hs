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
-- Module      : Network.AWS.APIGateway.GetDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a 'Deployment' resource.
module Network.AWS.APIGateway.GetDeployment
  ( -- * Creating a Request
    getDeployment,
    GetDeployment,

    -- * Request Lenses
    getEmbed,
    getRestAPIId,
    getDeploymentId,

    -- * Destructuring the Response
    deployment,
    Deployment,

    -- * Response Lenses
    dCreatedDate,
    dId,
    dApiSummary,
    dDescription,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Requests API Gateway to get information about a 'Deployment' resource.
--
--
--
-- /See:/ 'getDeployment' smart constructor.
data GetDeployment = GetDeployment'
  { _getEmbed ::
      !(Maybe [Text]),
    _getRestAPIId :: !Text,
    _getDeploymentId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDeployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getEmbed' - A query parameter to retrieve the specified embedded resources of the returned 'Deployment' resource in the response. In a REST API call, this @embed@ parameter value is a list of comma-separated strings, as in @GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2@ . The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the @"apisummary"@ string. For example, @GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary@ .
--
-- * 'getRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'getDeploymentId' - [Required] The identifier of the 'Deployment' resource to get information about.
getDeployment ::
  -- | 'getRestAPIId'
  Text ->
  -- | 'getDeploymentId'
  Text ->
  GetDeployment
getDeployment pRestAPIId_ pDeploymentId_ =
  GetDeployment'
    { _getEmbed = Nothing,
      _getRestAPIId = pRestAPIId_,
      _getDeploymentId = pDeploymentId_
    }

-- | A query parameter to retrieve the specified embedded resources of the returned 'Deployment' resource in the response. In a REST API call, this @embed@ parameter value is a list of comma-separated strings, as in @GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2@ . The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the @"apisummary"@ string. For example, @GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary@ .
getEmbed :: Lens' GetDeployment [Text]
getEmbed = lens _getEmbed (\s a -> s {_getEmbed = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
getRestAPIId :: Lens' GetDeployment Text
getRestAPIId = lens _getRestAPIId (\s a -> s {_getRestAPIId = a})

-- | [Required] The identifier of the 'Deployment' resource to get information about.
getDeploymentId :: Lens' GetDeployment Text
getDeploymentId = lens _getDeploymentId (\s a -> s {_getDeploymentId = a})

instance AWSRequest GetDeployment where
  type Rs GetDeployment = Deployment
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetDeployment

instance NFData GetDeployment

instance ToHeaders GetDeployment where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetDeployment where
  toPath GetDeployment' {..} =
    mconcat
      [ "/restapis/",
        toBS _getRestAPIId,
        "/deployments/",
        toBS _getDeploymentId
      ]

instance ToQuery GetDeployment where
  toQuery GetDeployment' {..} =
    mconcat
      [ "embed"
          =: toQuery (toQueryList "member" <$> _getEmbed)
      ]
