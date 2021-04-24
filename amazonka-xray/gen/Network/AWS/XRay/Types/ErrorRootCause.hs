{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ErrorRootCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ErrorRootCause where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.ErrorRootCauseService

-- | The root cause of a trace summary error.
--
--
--
-- /See:/ 'errorRootCause' smart constructor.
data ErrorRootCause = ErrorRootCause'
  { _ercServices ::
      !(Maybe [ErrorRootCauseService]),
    _ercClientImpacting :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ErrorRootCause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ercServices' - A list of services corresponding to an error. A service identifies a segment and it contains a name, account ID, type, and inferred flag.
--
-- * 'ercClientImpacting' - A flag that denotes that the root cause impacts the trace client.
errorRootCause ::
  ErrorRootCause
errorRootCause =
  ErrorRootCause'
    { _ercServices = Nothing,
      _ercClientImpacting = Nothing
    }

-- | A list of services corresponding to an error. A service identifies a segment and it contains a name, account ID, type, and inferred flag.
ercServices :: Lens' ErrorRootCause [ErrorRootCauseService]
ercServices = lens _ercServices (\s a -> s {_ercServices = a}) . _Default . _Coerce

-- | A flag that denotes that the root cause impacts the trace client.
ercClientImpacting :: Lens' ErrorRootCause (Maybe Bool)
ercClientImpacting = lens _ercClientImpacting (\s a -> s {_ercClientImpacting = a})

instance FromJSON ErrorRootCause where
  parseJSON =
    withObject
      "ErrorRootCause"
      ( \x ->
          ErrorRootCause'
            <$> (x .:? "Services" .!= mempty)
            <*> (x .:? "ClientImpacting")
      )

instance Hashable ErrorRootCause

instance NFData ErrorRootCause
