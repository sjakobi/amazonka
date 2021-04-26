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
-- Module      : Network.AWS.EMR.Types.Statistic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Statistic
  ( Statistic
      ( ..,
        StatisticAVERAGE,
        StatisticMAXIMUM,
        StatisticMINIMUM,
        StatisticSAMPLECOUNT,
        StatisticSUM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Statistic = Statistic'
  { fromStatistic ::
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

pattern StatisticAVERAGE :: Statistic
pattern StatisticAVERAGE = Statistic' "AVERAGE"

pattern StatisticMAXIMUM :: Statistic
pattern StatisticMAXIMUM = Statistic' "MAXIMUM"

pattern StatisticMINIMUM :: Statistic
pattern StatisticMINIMUM = Statistic' "MINIMUM"

pattern StatisticSAMPLECOUNT :: Statistic
pattern StatisticSAMPLECOUNT = Statistic' "SAMPLE_COUNT"

pattern StatisticSUM :: Statistic
pattern StatisticSUM = Statistic' "SUM"

{-# COMPLETE
  StatisticAVERAGE,
  StatisticMAXIMUM,
  StatisticMINIMUM,
  StatisticSAMPLECOUNT,
  StatisticSUM,
  Statistic'
  #-}

instance Prelude.FromText Statistic where
  parser = Statistic' Prelude.<$> Prelude.takeText

instance Prelude.ToText Statistic where
  toText (Statistic' x) = x

instance Prelude.Hashable Statistic

instance Prelude.NFData Statistic

instance Prelude.ToByteString Statistic

instance Prelude.ToQuery Statistic

instance Prelude.ToHeader Statistic

instance Prelude.ToJSON Statistic where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Statistic where
  parseJSON = Prelude.parseJSONText "Statistic"
