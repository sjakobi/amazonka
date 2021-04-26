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
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
  ( EnvironmentHealth
      ( ..,
        EnvironmentHealthGreen,
        EnvironmentHealthGrey,
        EnvironmentHealthRed,
        EnvironmentHealthYellow
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentHealth = EnvironmentHealth'
  { fromEnvironmentHealth ::
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

pattern EnvironmentHealthGreen :: EnvironmentHealth
pattern EnvironmentHealthGreen = EnvironmentHealth' "Green"

pattern EnvironmentHealthGrey :: EnvironmentHealth
pattern EnvironmentHealthGrey = EnvironmentHealth' "Grey"

pattern EnvironmentHealthRed :: EnvironmentHealth
pattern EnvironmentHealthRed = EnvironmentHealth' "Red"

pattern EnvironmentHealthYellow :: EnvironmentHealth
pattern EnvironmentHealthYellow = EnvironmentHealth' "Yellow"

{-# COMPLETE
  EnvironmentHealthGreen,
  EnvironmentHealthGrey,
  EnvironmentHealthRed,
  EnvironmentHealthYellow,
  EnvironmentHealth'
  #-}

instance Prelude.FromText EnvironmentHealth where
  parser = EnvironmentHealth' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentHealth where
  toText (EnvironmentHealth' x) = x

instance Prelude.Hashable EnvironmentHealth

instance Prelude.NFData EnvironmentHealth

instance Prelude.ToByteString EnvironmentHealth

instance Prelude.ToQuery EnvironmentHealth

instance Prelude.ToHeader EnvironmentHealth

instance Prelude.FromXML EnvironmentHealth where
  parseXML = Prelude.parseXMLText "EnvironmentHealth"
