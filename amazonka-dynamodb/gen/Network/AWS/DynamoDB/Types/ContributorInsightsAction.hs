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
-- Module      : Network.AWS.DynamoDB.Types.ContributorInsightsAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ContributorInsightsAction
  ( ContributorInsightsAction
      ( ..,
        ContributorInsightsActionDISABLE,
        ContributorInsightsActionENABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContributorInsightsAction = ContributorInsightsAction'
  { fromContributorInsightsAction ::
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

pattern ContributorInsightsActionDISABLE :: ContributorInsightsAction
pattern ContributorInsightsActionDISABLE = ContributorInsightsAction' "DISABLE"

pattern ContributorInsightsActionENABLE :: ContributorInsightsAction
pattern ContributorInsightsActionENABLE = ContributorInsightsAction' "ENABLE"

{-# COMPLETE
  ContributorInsightsActionDISABLE,
  ContributorInsightsActionENABLE,
  ContributorInsightsAction'
  #-}

instance Prelude.FromText ContributorInsightsAction where
  parser = ContributorInsightsAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContributorInsightsAction where
  toText (ContributorInsightsAction' x) = x

instance Prelude.Hashable ContributorInsightsAction

instance Prelude.NFData ContributorInsightsAction

instance Prelude.ToByteString ContributorInsightsAction

instance Prelude.ToQuery ContributorInsightsAction

instance Prelude.ToHeader ContributorInsightsAction

instance Prelude.ToJSON ContributorInsightsAction where
  toJSON = Prelude.toJSONText
