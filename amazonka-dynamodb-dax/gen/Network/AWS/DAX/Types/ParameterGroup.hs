{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.ParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.ParameterGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A named set of parameters that are applied to all of the nodes in a DAX cluster.
--
--
--
-- /See:/ 'parameterGroup' smart constructor.
data ParameterGroup = ParameterGroup'
  { _pgParameterGroupName ::
      !(Maybe Text),
    _pgDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgParameterGroupName' - The name of the parameter group.
--
-- * 'pgDescription' - A description of the parameter group.
parameterGroup ::
  ParameterGroup
parameterGroup =
  ParameterGroup'
    { _pgParameterGroupName = Nothing,
      _pgDescription = Nothing
    }

-- | The name of the parameter group.
pgParameterGroupName :: Lens' ParameterGroup (Maybe Text)
pgParameterGroupName = lens _pgParameterGroupName (\s a -> s {_pgParameterGroupName = a})

-- | A description of the parameter group.
pgDescription :: Lens' ParameterGroup (Maybe Text)
pgDescription = lens _pgDescription (\s a -> s {_pgDescription = a})

instance FromJSON ParameterGroup where
  parseJSON =
    withObject
      "ParameterGroup"
      ( \x ->
          ParameterGroup'
            <$> (x .:? "ParameterGroupName")
            <*> (x .:? "Description")
      )

instance Hashable ParameterGroup

instance NFData ParameterGroup
