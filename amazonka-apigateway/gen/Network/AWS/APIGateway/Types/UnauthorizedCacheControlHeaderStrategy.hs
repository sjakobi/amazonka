{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
  ( UnauthorizedCacheControlHeaderStrategy
      ( ..,
        UnauthorizedCacheControlHeaderStrategyFAILWITH403,
        UnauthorizedCacheControlHeaderStrategySUCCEEDWITHOUTRESPONSEHEADER,
        UnauthorizedCacheControlHeaderStrategySUCCEEDWITHRESPONSEHEADER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UnauthorizedCacheControlHeaderStrategy = UnauthorizedCacheControlHeaderStrategy'
  { fromUnauthorizedCacheControlHeaderStrategy ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern UnauthorizedCacheControlHeaderStrategyFAILWITH403 :: UnauthorizedCacheControlHeaderStrategy
pattern UnauthorizedCacheControlHeaderStrategyFAILWITH403 = UnauthorizedCacheControlHeaderStrategy' "FAIL_WITH_403"

pattern UnauthorizedCacheControlHeaderStrategySUCCEEDWITHOUTRESPONSEHEADER :: UnauthorizedCacheControlHeaderStrategy
pattern UnauthorizedCacheControlHeaderStrategySUCCEEDWITHOUTRESPONSEHEADER = UnauthorizedCacheControlHeaderStrategy' "SUCCEED_WITHOUT_RESPONSE_HEADER"

pattern UnauthorizedCacheControlHeaderStrategySUCCEEDWITHRESPONSEHEADER :: UnauthorizedCacheControlHeaderStrategy
pattern UnauthorizedCacheControlHeaderStrategySUCCEEDWITHRESPONSEHEADER = UnauthorizedCacheControlHeaderStrategy' "SUCCEED_WITH_RESPONSE_HEADER"

{-# COMPLETE
  UnauthorizedCacheControlHeaderStrategyFAILWITH403,
  UnauthorizedCacheControlHeaderStrategySUCCEEDWITHOUTRESPONSEHEADER,
  UnauthorizedCacheControlHeaderStrategySUCCEEDWITHRESPONSEHEADER,
  UnauthorizedCacheControlHeaderStrategy'
  #-}

instance Prelude.FromText UnauthorizedCacheControlHeaderStrategy where
  parser = UnauthorizedCacheControlHeaderStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText UnauthorizedCacheControlHeaderStrategy where
  toText (UnauthorizedCacheControlHeaderStrategy' x) = x

instance Prelude.Hashable UnauthorizedCacheControlHeaderStrategy

instance Prelude.NFData UnauthorizedCacheControlHeaderStrategy

instance Prelude.ToByteString UnauthorizedCacheControlHeaderStrategy

instance Prelude.ToQuery UnauthorizedCacheControlHeaderStrategy

instance Prelude.ToHeader UnauthorizedCacheControlHeaderStrategy

instance Prelude.FromJSON UnauthorizedCacheControlHeaderStrategy where
  parseJSON = Prelude.parseJSONText "UnauthorizedCacheControlHeaderStrategy"
