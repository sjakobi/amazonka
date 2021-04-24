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
-- Module      : Network.AWS.Route53.GetHealthCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified health check.
module Network.AWS.Route53.GetHealthCheck
  ( -- * Creating a Request
    getHealthCheck,
    GetHealthCheck,

    -- * Request Lenses
    ghcHealthCheckId,

    -- * Destructuring the Response
    getHealthCheckResponse,
    GetHealthCheckResponse,

    -- * Response Lenses
    ghcrrsResponseStatus,
    ghcrrsHealthCheck,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request to get information about a specified health check.
--
--
--
-- /See:/ 'getHealthCheck' smart constructor.
newtype GetHealthCheck = GetHealthCheck'
  { _ghcHealthCheckId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetHealthCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghcHealthCheckId' - The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long.
getHealthCheck ::
  -- | 'ghcHealthCheckId'
  Text ->
  GetHealthCheck
getHealthCheck pHealthCheckId_ =
  GetHealthCheck'
    { _ghcHealthCheckId =
        pHealthCheckId_
    }

-- | The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long.
ghcHealthCheckId :: Lens' GetHealthCheck Text
ghcHealthCheckId = lens _ghcHealthCheckId (\s a -> s {_ghcHealthCheckId = a})

instance AWSRequest GetHealthCheck where
  type Rs GetHealthCheck = GetHealthCheckResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetHealthCheckResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "HealthCheck")
      )

instance Hashable GetHealthCheck

instance NFData GetHealthCheck

instance ToHeaders GetHealthCheck where
  toHeaders = const mempty

instance ToPath GetHealthCheck where
  toPath GetHealthCheck' {..} =
    mconcat
      ["/2013-04-01/healthcheck/", toBS _ghcHealthCheckId]

instance ToQuery GetHealthCheck where
  toQuery = const mempty

-- | A complex type that contains the response to a @GetHealthCheck@ request.
--
--
--
-- /See:/ 'getHealthCheckResponse' smart constructor.
data GetHealthCheckResponse = GetHealthCheckResponse'
  { _ghcrrsResponseStatus ::
      !Int,
    _ghcrrsHealthCheck ::
      !HealthCheck
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetHealthCheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghcrrsResponseStatus' - -- | The response status code.
--
-- * 'ghcrrsHealthCheck' - A complex type that contains information about one health check that is associated with the current AWS account.
getHealthCheckResponse ::
  -- | 'ghcrrsResponseStatus'
  Int ->
  -- | 'ghcrrsHealthCheck'
  HealthCheck ->
  GetHealthCheckResponse
getHealthCheckResponse pResponseStatus_ pHealthCheck_ =
  GetHealthCheckResponse'
    { _ghcrrsResponseStatus =
        pResponseStatus_,
      _ghcrrsHealthCheck = pHealthCheck_
    }

-- | -- | The response status code.
ghcrrsResponseStatus :: Lens' GetHealthCheckResponse Int
ghcrrsResponseStatus = lens _ghcrrsResponseStatus (\s a -> s {_ghcrrsResponseStatus = a})

-- | A complex type that contains information about one health check that is associated with the current AWS account.
ghcrrsHealthCheck :: Lens' GetHealthCheckResponse HealthCheck
ghcrrsHealthCheck = lens _ghcrrsHealthCheck (\s a -> s {_ghcrrsHealthCheck = a})

instance NFData GetHealthCheckResponse
