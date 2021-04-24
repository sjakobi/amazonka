{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.Rule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.Rule where

import Network.AWS.CloudDirectory.Types.RuleType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains an Amazon Resource Name (ARN) and parameters that are associated with the rule.
--
--
--
-- /See:/ 'rule' smart constructor.
data Rule = Rule'
  { _rType :: !(Maybe RuleType),
    _rParameters :: !(Maybe (Map Text Text))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Rule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rType' - The type of attribute validation rule.
--
-- * 'rParameters' - The minimum and maximum parameters that are associated with the rule.
rule ::
  Rule
rule =
  Rule' {_rType = Nothing, _rParameters = Nothing}

-- | The type of attribute validation rule.
rType :: Lens' Rule (Maybe RuleType)
rType = lens _rType (\s a -> s {_rType = a})

-- | The minimum and maximum parameters that are associated with the rule.
rParameters :: Lens' Rule (HashMap Text Text)
rParameters = lens _rParameters (\s a -> s {_rParameters = a}) . _Default . _Map

instance FromJSON Rule where
  parseJSON =
    withObject
      "Rule"
      ( \x ->
          Rule'
            <$> (x .:? "Type") <*> (x .:? "Parameters" .!= mempty)
      )

instance Hashable Rule

instance NFData Rule

instance ToJSON Rule where
  toJSON Rule' {..} =
    object
      ( catMaybes
          [ ("Type" .=) <$> _rType,
            ("Parameters" .=) <$> _rParameters
          ]
      )
