{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ResponseTimeRootCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ResponseTimeRootCause where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.ResponseTimeRootCauseService

-- | The root cause information for a response time warning.
--
--
--
-- /See:/ 'responseTimeRootCause' smart constructor.
data ResponseTimeRootCause = ResponseTimeRootCause'
  { _rtrcServices ::
      !( Maybe
           [ResponseTimeRootCauseService]
       ),
    _rtrcClientImpacting ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResponseTimeRootCause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrcServices' - A list of corresponding services. A service identifies a segment and contains a name, account ID, type, and inferred flag.
--
-- * 'rtrcClientImpacting' - A flag that denotes that the root cause impacts the trace client.
responseTimeRootCause ::
  ResponseTimeRootCause
responseTimeRootCause =
  ResponseTimeRootCause'
    { _rtrcServices = Nothing,
      _rtrcClientImpacting = Nothing
    }

-- | A list of corresponding services. A service identifies a segment and contains a name, account ID, type, and inferred flag.
rtrcServices :: Lens' ResponseTimeRootCause [ResponseTimeRootCauseService]
rtrcServices = lens _rtrcServices (\s a -> s {_rtrcServices = a}) . _Default . _Coerce

-- | A flag that denotes that the root cause impacts the trace client.
rtrcClientImpacting :: Lens' ResponseTimeRootCause (Maybe Bool)
rtrcClientImpacting = lens _rtrcClientImpacting (\s a -> s {_rtrcClientImpacting = a})

instance FromJSON ResponseTimeRootCause where
  parseJSON =
    withObject
      "ResponseTimeRootCause"
      ( \x ->
          ResponseTimeRootCause'
            <$> (x .:? "Services" .!= mempty)
            <*> (x .:? "ClientImpacting")
      )

instance Hashable ResponseTimeRootCause

instance NFData ResponseTimeRootCause
