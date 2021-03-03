# -*- coding: utf-8 -*-
"""
Created on Mon Mar  1 16:15:35 2021

@author: Chuck
"""


def hex_2_signed_int(value):
    return -(value & 0x80000000) | (value & 0x7fffffff)