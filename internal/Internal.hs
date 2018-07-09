{-# LANGUAGE GADTs #-}

module Internal
       ( TF (..)
       ) where

import Data.Typeable (Typeable)

-- | Existential wrapper around 'Typeable' indexed by @f@ type parameter.
-- Useful for 'TypeRepMap' structure creation form list of 'TF's.
data TF f where
    TF :: Typeable a => f a -> TF f
