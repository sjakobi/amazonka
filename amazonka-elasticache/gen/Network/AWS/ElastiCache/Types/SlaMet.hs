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
-- Module      : Network.AWS.ElastiCache.Types.SlaMet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.SlaMet
  ( SlaMet
      ( ..,
        SlaMetNO,
        SlaMetNa,
        SlaMetYes
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SlaMet = SlaMet' {fromSlaMet :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SlaMetNO :: SlaMet
pattern SlaMetNO = SlaMet' "no"

pattern SlaMetNa :: SlaMet
pattern SlaMetNa = SlaMet' "n/a"

pattern SlaMetYes :: SlaMet
pattern SlaMetYes = SlaMet' "yes"

{-# COMPLETE
  SlaMetNO,
  SlaMetNa,
  SlaMetYes,
  SlaMet'
  #-}

instance Prelude.FromText SlaMet where
  parser = SlaMet' Prelude.<$> Prelude.takeText

instance Prelude.ToText SlaMet where
  toText (SlaMet' x) = x

instance Prelude.Hashable SlaMet

instance Prelude.NFData SlaMet

instance Prelude.ToByteString SlaMet

instance Prelude.ToQuery SlaMet

instance Prelude.ToHeader SlaMet

instance Prelude.FromXML SlaMet where
  parseXML = Prelude.parseXMLText "SlaMet"
