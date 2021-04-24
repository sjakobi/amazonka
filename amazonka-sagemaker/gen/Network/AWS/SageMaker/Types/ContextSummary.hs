{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ContextSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ContextSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ContextSource

-- | Lists a summary of the properties of a context. A context provides a logical grouping of other entities.
--
--
--
-- /See:/ 'contextSummary' smart constructor.
data ContextSummary = ContextSummary'
  { _csContextType ::
      !(Maybe Text),
    _csCreationTime :: !(Maybe POSIX),
    _csContextName :: !(Maybe Text),
    _csSource :: !(Maybe ContextSource),
    _csLastModifiedTime :: !(Maybe POSIX),
    _csContextARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContextSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csContextType' - The type of the context.
--
-- * 'csCreationTime' - When the context was created.
--
-- * 'csContextName' - The name of the context.
--
-- * 'csSource' - The source of the context.
--
-- * 'csLastModifiedTime' - When the context was last modified.
--
-- * 'csContextARN' - The Amazon Resource Name (ARN) of the context.
contextSummary ::
  ContextSummary
contextSummary =
  ContextSummary'
    { _csContextType = Nothing,
      _csCreationTime = Nothing,
      _csContextName = Nothing,
      _csSource = Nothing,
      _csLastModifiedTime = Nothing,
      _csContextARN = Nothing
    }

-- | The type of the context.
csContextType :: Lens' ContextSummary (Maybe Text)
csContextType = lens _csContextType (\s a -> s {_csContextType = a})

-- | When the context was created.
csCreationTime :: Lens' ContextSummary (Maybe UTCTime)
csCreationTime = lens _csCreationTime (\s a -> s {_csCreationTime = a}) . mapping _Time

-- | The name of the context.
csContextName :: Lens' ContextSummary (Maybe Text)
csContextName = lens _csContextName (\s a -> s {_csContextName = a})

-- | The source of the context.
csSource :: Lens' ContextSummary (Maybe ContextSource)
csSource = lens _csSource (\s a -> s {_csSource = a})

-- | When the context was last modified.
csLastModifiedTime :: Lens' ContextSummary (Maybe UTCTime)
csLastModifiedTime = lens _csLastModifiedTime (\s a -> s {_csLastModifiedTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the context.
csContextARN :: Lens' ContextSummary (Maybe Text)
csContextARN = lens _csContextARN (\s a -> s {_csContextARN = a})

instance FromJSON ContextSummary where
  parseJSON =
    withObject
      "ContextSummary"
      ( \x ->
          ContextSummary'
            <$> (x .:? "ContextType")
            <*> (x .:? "CreationTime")
            <*> (x .:? "ContextName")
            <*> (x .:? "Source")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "ContextArn")
      )

instance Hashable ContextSummary

instance NFData ContextSummary
