{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.TracingConfigResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.TracingConfigResponse where

import Network.AWS.Lambda.Types.TracingMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The function's AWS X-Ray tracing configuration.
--
--
--
-- /See:/ 'tracingConfigResponse' smart constructor.
newtype TracingConfigResponse = TracingConfigResponse'
  { _tcrMode ::
      Maybe TracingMode
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TracingConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcrMode' - The tracing mode.
tracingConfigResponse ::
  TracingConfigResponse
tracingConfigResponse =
  TracingConfigResponse' {_tcrMode = Nothing}

-- | The tracing mode.
tcrMode :: Lens' TracingConfigResponse (Maybe TracingMode)
tcrMode = lens _tcrMode (\s a -> s {_tcrMode = a})

instance FromJSON TracingConfigResponse where
  parseJSON =
    withObject
      "TracingConfigResponse"
      (\x -> TracingConfigResponse' <$> (x .:? "Mode"))

instance Hashable TracingConfigResponse

instance NFData TracingConfigResponse
