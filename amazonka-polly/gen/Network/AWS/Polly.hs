{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Amazon Polly is a web service that makes it easy to synthesize speech from text.
--
--
-- The Amazon Polly service provides API operations for synthesizing high-quality speech from plain text and Speech Synthesis Markup Language (SSML), along with managing pronunciations lexicons that enable you to get the best results for your application domain.
module Network.AWS.Polly
  ( -- * Service Configuration
    polly,

    -- * Errors
    -- $errors

    -- ** InvalidSsmlException
    _InvalidSsmlException,

    -- ** InvalidLexiconException
    _InvalidLexiconException,

    -- ** InvalidS3KeyException
    _InvalidS3KeyException,

    -- ** LexiconNotFoundException
    _LexiconNotFoundException,

    -- ** MaxLexemeLengthExceededException
    _MaxLexemeLengthExceededException,

    -- ** SynthesisTaskNotFoundException
    _SynthesisTaskNotFoundException,

    -- ** TextLengthExceededException
    _TextLengthExceededException,

    -- ** UnsupportedPlsAlphabetException
    _UnsupportedPlsAlphabetException,

    -- ** MaxLexiconsNumberExceededException
    _MaxLexiconsNumberExceededException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** MarksNotSupportedForFormatException
    _MarksNotSupportedForFormatException,

    -- ** InvalidSampleRateException
    _InvalidSampleRateException,

    -- ** ServiceFailureException
    _ServiceFailureException,

    -- ** UnsupportedPlsLanguageException
    _UnsupportedPlsLanguageException,

    -- ** InvalidSNSTopicARNException
    _InvalidSNSTopicARNException,

    -- ** InvalidTaskIdException
    _InvalidTaskIdException,

    -- ** LanguageNotSupportedException
    _LanguageNotSupportedException,

    -- ** LexiconSizeExceededException
    _LexiconSizeExceededException,

    -- ** InvalidS3BucketException
    _InvalidS3BucketException,

    -- ** SsmlMarksNotSupportedForTextTypeException
    _SsmlMarksNotSupportedForTextTypeException,

    -- ** EngineNotSupportedException
    _EngineNotSupportedException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetSpeechSynthesisTask
    module Network.AWS.Polly.GetSpeechSynthesisTask,

    -- ** GetLexicon
    module Network.AWS.Polly.GetLexicon,

    -- ** ListLexicons (Paginated)
    module Network.AWS.Polly.ListLexicons,

    -- ** DeleteLexicon
    module Network.AWS.Polly.DeleteLexicon,

    -- ** DescribeVoices (Paginated)
    module Network.AWS.Polly.DescribeVoices,

    -- ** StartSpeechSynthesisTask
    module Network.AWS.Polly.StartSpeechSynthesisTask,

    -- ** PutLexicon
    module Network.AWS.Polly.PutLexicon,

    -- ** SynthesizeSpeech
    module Network.AWS.Polly.SynthesizeSpeech,

    -- ** ListSpeechSynthesisTasks (Paginated)
    module Network.AWS.Polly.ListSpeechSynthesisTasks,

    -- * Types

    -- ** Engine
    Engine (..),

    -- ** Gender
    Gender (..),

    -- ** LanguageCode
    LanguageCode (..),

    -- ** OutputFormat
    OutputFormat (..),

    -- ** SpeechMarkType
    SpeechMarkType (..),

    -- ** TaskStatus
    TaskStatus (..),

    -- ** TextType
    TextType (..),

    -- ** VoiceId
    VoiceId (..),

    -- ** Lexicon
    Lexicon,
    lexicon,
    lName,
    lContent,

    -- ** LexiconAttributes
    LexiconAttributes,
    lexiconAttributes,
    laLanguageCode,
    laLexiconARN,
    laAlphabet,
    laLexemesCount,
    laLastModified,
    laSize,

    -- ** LexiconDescription
    LexiconDescription,
    lexiconDescription,
    ldAttributes,
    ldName,

    -- ** SynthesisTask
    SynthesisTask,
    synthesisTask,
    stLanguageCode,
    stCreationTime,
    stOutputURI,
    stSpeechMarkTypes,
    stLexiconNames,
    stVoiceId,
    stTaskId,
    stTextType,
    stOutputFormat,
    stSampleRate,
    stTaskStatus,
    stEngine,
    stRequestCharacters,
    stTaskStatusReason,
    stSNSTopicARN,

    -- ** Voice
    Voice,
    voice,
    vLanguageCode,
    vId,
    vGender,
    vName,
    vSupportedEngines,
    vAdditionalLanguageCodes,
    vLanguageName,
  )
where

import Network.AWS.Polly.DeleteLexicon
import Network.AWS.Polly.DescribeVoices
import Network.AWS.Polly.GetLexicon
import Network.AWS.Polly.GetSpeechSynthesisTask
import Network.AWS.Polly.ListLexicons
import Network.AWS.Polly.ListSpeechSynthesisTasks
import Network.AWS.Polly.PutLexicon
import Network.AWS.Polly.StartSpeechSynthesisTask
import Network.AWS.Polly.SynthesizeSpeech
import Network.AWS.Polly.Types
import Network.AWS.Polly.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Polly'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
