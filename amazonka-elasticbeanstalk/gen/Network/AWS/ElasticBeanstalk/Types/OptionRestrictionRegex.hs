{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.OptionRestrictionRegex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.OptionRestrictionRegex where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A regular expression representing a restriction on a string configuration option value.
--
--
--
-- /See:/ 'optionRestrictionRegex' smart constructor.
data OptionRestrictionRegex = OptionRestrictionRegex'
  { _orrLabel ::
      !(Maybe Text),
    _orrPattern ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'OptionRestrictionRegex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrLabel' - A unique name representing this regular expression.
--
-- * 'orrPattern' - The regular expression pattern that a string configuration option value with this restriction must match.
optionRestrictionRegex ::
  OptionRestrictionRegex
optionRestrictionRegex =
  OptionRestrictionRegex'
    { _orrLabel = Nothing,
      _orrPattern = Nothing
    }

-- | A unique name representing this regular expression.
orrLabel :: Lens' OptionRestrictionRegex (Maybe Text)
orrLabel = lens _orrLabel (\s a -> s {_orrLabel = a})

-- | The regular expression pattern that a string configuration option value with this restriction must match.
orrPattern :: Lens' OptionRestrictionRegex (Maybe Text)
orrPattern = lens _orrPattern (\s a -> s {_orrPattern = a})

instance FromXML OptionRestrictionRegex where
  parseXML x =
    OptionRestrictionRegex'
      <$> (x .@? "Label") <*> (x .@? "Pattern")

instance Hashable OptionRestrictionRegex

instance NFData OptionRestrictionRegex
