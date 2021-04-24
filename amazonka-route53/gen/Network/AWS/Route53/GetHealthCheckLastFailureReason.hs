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
-- Module      : Network.AWS.Route53.GetHealthCheckLastFailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the reason that a specified health check failed most recently.
module Network.AWS.Route53.GetHealthCheckLastFailureReason
  ( -- * Creating a Request
    getHealthCheckLastFailureReason,
    GetHealthCheckLastFailureReason,

    -- * Request Lenses
    ghclfrHealthCheckId,

    -- * Destructuring the Response
    getHealthCheckLastFailureReasonResponse,
    GetHealthCheckLastFailureReasonResponse,

    -- * Response Lenses
    ghclfrrrsResponseStatus,
    ghclfrrrsHealthCheckObservations,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | A request for the reason that a health check failed most recently.
--
--
--
-- /See:/ 'getHealthCheckLastFailureReason' smart constructor.
newtype GetHealthCheckLastFailureReason = GetHealthCheckLastFailureReason'
  { _ghclfrHealthCheckId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetHealthCheckLastFailureReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghclfrHealthCheckId' - The ID for the health check for which you want the last failure reason. When you created the health check, @CreateHealthCheck@ returned the ID in the response, in the @HealthCheckId@ element.
getHealthCheckLastFailureReason ::
  -- | 'ghclfrHealthCheckId'
  Text ->
  GetHealthCheckLastFailureReason
getHealthCheckLastFailureReason pHealthCheckId_ =
  GetHealthCheckLastFailureReason'
    { _ghclfrHealthCheckId =
        pHealthCheckId_
    }

-- | The ID for the health check for which you want the last failure reason. When you created the health check, @CreateHealthCheck@ returned the ID in the response, in the @HealthCheckId@ element.
ghclfrHealthCheckId :: Lens' GetHealthCheckLastFailureReason Text
ghclfrHealthCheckId = lens _ghclfrHealthCheckId (\s a -> s {_ghclfrHealthCheckId = a})

instance AWSRequest GetHealthCheckLastFailureReason where
  type
    Rs GetHealthCheckLastFailureReason =
      GetHealthCheckLastFailureReasonResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetHealthCheckLastFailureReasonResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "HealthCheckObservations" .!@ mempty
                    >>= parseXMLList "HealthCheckObservation"
                )
      )

instance Hashable GetHealthCheckLastFailureReason

instance NFData GetHealthCheckLastFailureReason

instance ToHeaders GetHealthCheckLastFailureReason where
  toHeaders = const mempty

instance ToPath GetHealthCheckLastFailureReason where
  toPath GetHealthCheckLastFailureReason' {..} =
    mconcat
      [ "/2013-04-01/healthcheck/",
        toBS _ghclfrHealthCheckId,
        "/lastfailurereason"
      ]

instance ToQuery GetHealthCheckLastFailureReason where
  toQuery = const mempty

-- | A complex type that contains the response to a @GetHealthCheckLastFailureReason@ request.
--
--
--
-- /See:/ 'getHealthCheckLastFailureReasonResponse' smart constructor.
data GetHealthCheckLastFailureReasonResponse = GetHealthCheckLastFailureReasonResponse'
  { _ghclfrrrsResponseStatus ::
      !Int,
    _ghclfrrrsHealthCheckObservations ::
      ![HealthCheckObservation]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetHealthCheckLastFailureReasonResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghclfrrrsResponseStatus' - -- | The response status code.
--
-- * 'ghclfrrrsHealthCheckObservations' - A list that contains one @Observation@ element for each Amazon Route 53 health checker that is reporting a last failure reason.
getHealthCheckLastFailureReasonResponse ::
  -- | 'ghclfrrrsResponseStatus'
  Int ->
  GetHealthCheckLastFailureReasonResponse
getHealthCheckLastFailureReasonResponse
  pResponseStatus_ =
    GetHealthCheckLastFailureReasonResponse'
      { _ghclfrrrsResponseStatus =
          pResponseStatus_,
        _ghclfrrrsHealthCheckObservations =
          mempty
      }

-- | -- | The response status code.
ghclfrrrsResponseStatus :: Lens' GetHealthCheckLastFailureReasonResponse Int
ghclfrrrsResponseStatus = lens _ghclfrrrsResponseStatus (\s a -> s {_ghclfrrrsResponseStatus = a})

-- | A list that contains one @Observation@ element for each Amazon Route 53 health checker that is reporting a last failure reason.
ghclfrrrsHealthCheckObservations :: Lens' GetHealthCheckLastFailureReasonResponse [HealthCheckObservation]
ghclfrrrsHealthCheckObservations = lens _ghclfrrrsHealthCheckObservations (\s a -> s {_ghclfrrrsHealthCheckObservations = a}) . _Coerce

instance
  NFData
    GetHealthCheckLastFailureReasonResponse
