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
-- Module      : Network.AWS.SageMaker.Types.JoinSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.JoinSource
  ( JoinSource
      ( ..,
        JoinSourceInput,
        JoinSourceNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JoinSource = JoinSource'
  { fromJoinSource ::
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

pattern JoinSourceInput :: JoinSource
pattern JoinSourceInput = JoinSource' "Input"

pattern JoinSourceNone :: JoinSource
pattern JoinSourceNone = JoinSource' "None"

{-# COMPLETE
  JoinSourceInput,
  JoinSourceNone,
  JoinSource'
  #-}

instance Prelude.FromText JoinSource where
  parser = JoinSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText JoinSource where
  toText (JoinSource' x) = x

instance Prelude.Hashable JoinSource

instance Prelude.NFData JoinSource

instance Prelude.ToByteString JoinSource

instance Prelude.ToQuery JoinSource

instance Prelude.ToHeader JoinSource

instance Prelude.ToJSON JoinSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JoinSource where
  parseJSON = Prelude.parseJSONText "JoinSource"
