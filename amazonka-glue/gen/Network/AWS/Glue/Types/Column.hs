{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Column
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Column where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A column in a @Table@ .
--
--
--
-- /See:/ 'column' smart constructor.
data Column = Column'
  { _cComment :: !(Maybe Text),
    _cType :: !(Maybe Text),
    _cParameters :: !(Maybe (Map Text Text)),
    _cName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cComment' - A free-form text comment.
--
-- * 'cType' - The data type of the @Column@ .
--
-- * 'cParameters' - These key-value pairs define properties associated with the column.
--
-- * 'cName' - The name of the @Column@ .
column ::
  -- | 'cName'
  Text ->
  Column
column pName_ =
  Column'
    { _cComment = Nothing,
      _cType = Nothing,
      _cParameters = Nothing,
      _cName = pName_
    }

-- | A free-form text comment.
cComment :: Lens' Column (Maybe Text)
cComment = lens _cComment (\s a -> s {_cComment = a})

-- | The data type of the @Column@ .
cType :: Lens' Column (Maybe Text)
cType = lens _cType (\s a -> s {_cType = a})

-- | These key-value pairs define properties associated with the column.
cParameters :: Lens' Column (HashMap Text Text)
cParameters = lens _cParameters (\s a -> s {_cParameters = a}) . _Default . _Map

-- | The name of the @Column@ .
cName :: Lens' Column Text
cName = lens _cName (\s a -> s {_cName = a})

instance FromJSON Column where
  parseJSON =
    withObject
      "Column"
      ( \x ->
          Column'
            <$> (x .:? "Comment")
            <*> (x .:? "Type")
            <*> (x .:? "Parameters" .!= mempty)
            <*> (x .: "Name")
      )

instance Hashable Column

instance NFData Column

instance ToJSON Column where
  toJSON Column' {..} =
    object
      ( catMaybes
          [ ("Comment" .=) <$> _cComment,
            ("Type" .=) <$> _cType,
            ("Parameters" .=) <$> _cParameters,
            Just ("Name" .= _cName)
          ]
      )
